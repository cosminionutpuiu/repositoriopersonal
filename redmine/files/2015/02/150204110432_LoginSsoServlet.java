package es.juntadeandalucia.cice.agata.sad.webapp.servlet;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.sun.identity.saml2.meta.SAML2MetaException;
import com.sun.identity.saml2.meta.SAML2MetaManager;

/**
 * Servlet para tratar las peticiones que tratan de logarse mediante SSO de Guia
 *
 */
public class LoginSsoServlet extends HttpServlet {

    /**
     * Serial uiD
     */
    private static final long serialVersionUID = 6629642308719956644L;
    /**
     * Logger.
     */
    private final Logger logger = Logger.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        prepareRedirection(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        prepareRedirection(request, response);
    }

    private void prepareRedirection(HttpServletRequest request, HttpServletResponse response) {
        
        logger.info("Se va a redirigir al IDP");
        
        String deployuri = request.getRequestURI();
        int slashLoc = deployuri.indexOf("/", 1);
        if (slashLoc != -1) {
            deployuri = deployuri.substring(0, slashLoc);
        }
        String fedletHomeDir = System.getProperty("com.sun.identity.fedlet.home");
        if ((fedletHomeDir == null) || (fedletHomeDir.trim().length() == 0)) {
            if (System.getProperty("user.home").equals(File.separator)) {
                fedletHomeDir = File.separator + "fedlet";
            } else {
                fedletHomeDir = System.getProperty("user.home") + File.separator + "fedlet";
            }
        }

        String spEntityID = null;
        String spMetaAlias = null;
        String idpEntityID = null;
        try {
            File dir = new File(fedletHomeDir);
            File file = new File(fedletHomeDir + File.separator + "FederationConfig.properties");
            if (!dir.exists() || !dir.isDirectory()) {
                logger.error("No existe directorio de configuración para WebSSO");
                response.sendRedirect("login.jsp");
            } else if (!file.exists()) {
                logger.error("No existe el fichero de configuración FederationConfig.properties para WebSSO");
                response.sendRedirect("login.jsp");
            } else {
                SAML2MetaManager manager = new SAML2MetaManager();
                List spEntities = manager.getAllHostedServiceProviderEntities("/");
                if ((spEntities != null) && !spEntities.isEmpty()) {
                    // get first one
                    spEntityID = (String) spEntities.get(0);
                }
                List spMetaAliases = manager.getAllHostedServiceProviderMetaAliases("/");
                if ((spMetaAliases != null) && !spMetaAliases.isEmpty()) {
                    // get first one
                    spMetaAlias = (String) spMetaAliases.get(0);
                }
                List trustedIDPs = new ArrayList();
                idpEntityID = request.getParameter("idpEntityID");
                if ((idpEntityID == null) || (idpEntityID.length() == 0)) {
                    // find out all trusted IDPs
                    List idpEntities = manager.getAllRemoteIdentityProviderEntities("/");
                    if ((idpEntities != null) && !idpEntities.isEmpty()) {
                        int numOfIDP = idpEntities.size();
                        for (int j = 0; j < numOfIDP; j++) {
                            String idpID = (String) idpEntities.get(j);
                            if (manager.isTrustedProvider("/", spEntityID, idpID)) {
                                trustedIDPs.add(idpID);
                            }
                        }
                    }
                }
                if (!trustedIDPs.isEmpty()) {
                    // get the single IDP entity ID
                    idpEntityID = (String) trustedIDPs.get(0);
                }
                if ((spEntityID == null) || (idpEntityID == null)) {
                    logger.error("No se pudo obtener spEntityID");
                    response.sendRedirect("login.jsp");
                } else {
                    // Redirigimos a saml2/jsp/fedletSSOInit.jsp para que haga la petición
                    String redirectUrl = "saml2/jsp/fedletSSOInit.jsp?metaAlias=" + spMetaAlias 
                            + "&idpEntityID=" + idpEntityID + "&binding=urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST";
                    logger.info("Url de petición para redirección es: " + redirectUrl);
                    response.sendRedirect(redirectUrl);
                }
            }
        } catch (SAML2MetaException se) {
            logger.error("Error al redirigir al IDP" + se.getMessage(), se);
        } catch (IOException e) {
            logger.error("Error al redirigir al IDP" + e.getMessage(), e);
        }
    }
}