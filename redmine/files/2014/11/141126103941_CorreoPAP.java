package es.juntadeandalucia.chap.dgpd.scdsh.ssoweb;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iplanet.sso.SSOException;
import com.iplanet.sso.SSOToken;
import com.sun.identity.authentication.spi.AMPostAuthProcessInterface;
import com.sun.identity.authentication.spi.AuthenticationException;
import com.sun.identity.shared.debug.Debug;

import es.juntadeandalucia.chap.dgpd.scdsh.crypto.CryptoException;
import es.juntadeandalucia.chap.dgpd.scdsh.crypto.CryptoFactory;
import es.juntadeandalucia.chap.dgpd.scdsh.crypto.CryptoFactoryImpl;
import es.juntadeandalucia.chap.dgpd.scdsh.crypto.CryptoKeyStore;
import es.juntadeandalucia.chap.dgpd.scdsh.crypto.Cryptographical;
 
public class CorreoPAP implements AMPostAuthProcessInterface
{
  private final static String DEBUG_FILE = "CorreoPAP";
  
  private final static String SET_PROP = "IDToken2";
  private final static String TOKEN_PROP = "VNBB39D";
  
  protected Debug debug = Debug.getInstance(DEBUG_FILE);
 
  public void onLoginSuccess(
    Map requestParamsMap,
    HttpServletRequest request,
    HttpServletResponse response,
    SSOToken token
  ) throws AuthenticationException
  {
	this.debug.message("Entrando a SamplePAP_onLoginSuccess");
	
    try {
    	
    	
      CryptoFactory cf = new CryptoFactoryImpl();
      String wd = System.getProperty("catalina.base") + File.separator + "webapps" + File.separator + "opensso" + File.separator + "WEB-INF";
      this.debug.message ("wd: " + wd);
      CryptoKeyStore cks = cf.createKeyStoreInstance(wd);
      Cryptographical cg = cf.createCryptographicalInstance(cks.getKey());
      
      String pwd = (String)requestParamsMap.get(SET_PROP);
      String pe = cg.encrypt(pwd);
      
      token.setProperty(TOKEN_PROP, pe);
      
      try {
		response.sendRedirect("http://www.google.com");
		return;
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      
      this.debug.message("Saliendo de SamplePAP_onLoginSuccess");
    } catch (SSOException ssoe) {
      debug.error("Unable to set property");
    } catch (CryptoException e){
      debug.error("CorreoPAP_onLoginSuccess: error al encriptar");
      debug.error("Mensaje: " + e.getMessage());
      debug.error("Cause: " + e.getCause().toString());
    }
    
  }
 
  public void onLoginFailure(
    Map requestParamsMap,
    HttpServletRequest request,
    HttpServletResponse response
  ) throws AuthenticationException
  {
    ; // Not used
  }
 
  public void onLogout(
    HttpServletRequest request,
    HttpServletResponse response,
    SSOToken token
  ) throws AuthenticationException
  {
    ; // Not used
  }
}