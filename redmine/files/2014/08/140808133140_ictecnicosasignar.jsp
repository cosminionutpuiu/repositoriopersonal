<%@ page import="java.util.*,com.ibatis.common.util.PaginatedList,com.ibatis.dao.client.*,infocor.db.domain.*,infocor.exception.*,infocor.db.service.*,infocor.bean.*,trewa.bd.trapi.trapiui.tpo.*,infocor.common.util.*,trewa.bd.sql.*" %>
<%@ taglib uri="struts-logic" prefix="logic" %>
<%@ taglib uri="struts-bean" prefix="bean" %>
<%@ taglib uri="struts-html" prefix="html" %>
<bean:define id="usuasig" name="trusuarioasignadoBean"/>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
  <META HTTP-EQUIV="Cache-Control" CONTENT="max-age=0">
  <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
  <meta http-equiv="expires" content="0">
  <META HTTP-EQUIV="Expires" CONTENT="Tue, 01 Jan 1980 1:00:00 GMT">
  <META HTTP-EQUIV="Pragma" CONTENT="no-cache">
  <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"></meta>
    
    <link rel="STYLESHEET" type="text/css" href="css/icestilo.css"> 
    <style type="text/css">
    </style>
 <script type="text/javascript">  
  function aceptar()
  {
    if (comprobar())
    {
      document.formulario.submit();
    }
  }
  function cancelar()
  {
    location.href='viewICSolicitudAsigna.do';
  }
 
  
  function comprobar()
  {
    if (document.formulario.CODUSUARIO.value=='')
    {
      alert('Debe seleccionar un técnico');
      document.formulario.CODUSUARIO.focus();
      return false;
    }
    if (document.formulario.TIPO.value=='')
    {
      alert('Debe seleccionar un tipo de asociación');
      document.formulario.TIPO.focus();
      return false;
    }
    return true;
  }

  </script>    
  </head>
  <body class="cuerpo_blanco" background="imagenes/fondoGrisDegradado.jpg">
  <table height="100%" width="100%" cellpadding="0" cellspacing="0"><tr><td valign="top">
  <form name="formulario" method="POST" action="newTRUsuarioAsignado.do">
  <label class="texto_titulo">ASIGNAR TÉCNICO A LA SOLICITUD</label>
  <br><br>
  <label class="texto_informacion">Datos del técnico:</label>
  <br>
  <br>
  
  <table class="tabla_edicion">
    <tr>
      <td class="texto_campo" align="right" valign="top">Técnico: </td>
      <td class="texto_valor">
        <select name="CODUSUARIO">
          <option value=""></option>
          <%  
          TRApiAdmService apiadms = new TRApiAdmService();
          TRExpedienteService expes = new TRExpedienteService();
          ClausulaWhere cW=new ClausulaWhere();
          
                    
          try{
            cW.addExpresion(trewa.bd.trapi.tpo.TrPerfilUsuario.CAMPO_NOMBRE,OperadorWhere.OP_IGUAL,ICConstanteService.getInstance().getICConstante(ICConstante.PERFIL_TECNICO).getVCONSTANTE());
            trewa.bd.trapi.tpo.TrPerfilUsuario[] perusu = apiadms.getApiADM().obtenerPerfilUsuario(null,cW,null);
            if (perusu!=null && perusu.length>0)
            {
              ClausulaWhere cW2=new ClausulaWhere(); 
                
              TrUsuarioAsignado[] usuariosAsig=expes.obtenerUsuariosAsignadosExpediente(new trewa.bd.tpo.TpoPK( ((TRUsuarioAsignadoBean)usuasig).getREFEXPEDIENTE()));
              
              
              if (usuariosAsig!=null && usuariosAsig.length>0)
              {
                  for (int i = 0; i < usuariosAsig.length; i++) 
                  {
                    cW2.addExpresion(trewa.bd.trapi.tpo.TrUsuarioPerfilUsuario.CAMPO_USUARIO,OperadorWhere.OP_DISTINTO,usuariosAsig[i].getUSUARIO().getCODUSUARIO());
                  }
              }
              
              
              trewa.bd.trapi.tpo.TrUsuarioPerfilUsuario[] usuperusu = apiadms.getApiADM().obtenerUsuarioPerfilUsuario(perusu[0].getREFPERFILUSU(),null,cW2,null);
              TreeMap tm = new TreeMap();
              
                for (int i = 0; i < usuperusu.length; i++) 
                {
                  
                  usuperusu[i].setUSUARIO(GNUsuarioService.getInstance().getGNUsuarioByCodUsuario(usuperusu[i].getUSUARIO().getCODUSUARIO()));
                  tm.put(usuperusu[i].getUSUARIO().getAPELLIDO1()+" "+usuperusu[i].getUSUARIO().getAPELLIDO2()+", "+usuperusu[i].getUSUARIO().getNOMBRE(), usuperusu[i].getUSUARIO().getCODUSUARIO());
                                  
                }
                
                for (Iterator it = tm.keySet().iterator(); it.hasNext();){
                	String nombre_tecnico=(String) it.next();
                	String codigo_usuario=(String) tm.get(nombre_tecnico);
                	%>
                	<option value="<%=codigo_usuario%>"><%=nombre_tecnico.toUpperCase()%></option>
                	<% 
                }
            }
          } catch (Exception e){
            throw e;
          } finally {
            if (apiadms!=null)
              apiadms.cerrarSesion(false);
            if (expes!=null)
              expes.cerrarSesion(false);
          }
          %>
        </select>
      </td>
    </tr>
    <tr>
      <td class="texto_campo" align="right" valign="top">Tipo asociación: </td>
      <td class="texto_valor">
        <select name="TIPO">
          <option value=""></option>
          <option value="P">Principal</option>
          <option value="S">Secundario</option>
        </select>
      </td>
    </tr>
  </table>
  <br>
  <center>
  <img class="imgboton" src="imagenes/boton_guardar.gif" alt="Aceptar" onclick="javascript:aceptar()">&nbsp;
  <img class="imgboton" src="imagenes/boton_volver.gif" alt="Volver" onclick="javascript:cancelar()">&nbsp;

  </center>
  </form>
  </td></tr></table>
  </body>
</html>
