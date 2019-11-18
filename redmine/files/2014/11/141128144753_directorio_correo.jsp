
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="com.iplanet.am.util.SystemProperties" %>
<%@ page import="com.iplanet.sso.*" %>
<%@ page import="com.sun.identity.cli.*" %>
<%@ page import="com.sun.identity.shared.Constants" %>
<%@ page import="java.text.MessageFormat" %>
<%@ page import="com.sun.identity.common.DNUtils" %>
<%@ page import="com.sun.identity.idm.AMIdentity" %>
<%@ page import="com.sun.identity.idm.IdType" %>
<%@ page import="java.util.*" %>


<%@ page contentType="text/html; charset=UTF-8" %>

<html xmlns="http://www.w3.org/1999/xhtml"> 
    <%@page info="Directorio" language="java"%>

<%


String ServiceURI = SystemProperties.get(Constants.AM_SERVICES_DEPLOYMENT_DESCRIPTOR);
String nombre ="";
 try {
            SSOTokenManager manager = SSOTokenManager.getInstance();
            SSOToken ssoToken = manager.createSSOToken(request);
            String usuario = "";
usuario = DNUtils.normalizeDN(ssoToken.getPrincipal().getName());

usuario = 		usuario.substring(usuario.indexOf("id=")+3,usuario.indexOf(","));

            // This will be your incoming user/token.
            AMIdentity user = new AMIdentity(ssoToken);
	    Map atributosIdentidad = user.getAttributes();
try{

	  if (atributosIdentidad.get("passcaducado").toString().equals("[0]")){
		response.sendRedirect("PassExpired.jsp");
		return;	
	  }
	  nombre = nombre +  ((HashSet<String>) atributosIdentidad.get("givenname")).iterator().next() + " ";
}catch (Exception e){ 
	nombre += "error";
}

try{
	nombre = nombre +  ((HashSet<String>) atributosIdentidad.get("sn")).iterator().next() + " ";
}catch (Exception e){
}

try{
	nombre = nombre +  ((HashSet<String>) atributosIdentidad.get("sn2")).iterator().next() + " ";
}catch (Exception e){
}

        } catch (Exception e) {
	e.printStackTrace();
nombre ="";
          // response.sendRedirect(ServiceURI +"/UI/Login");
        } 

%>

        <head>
<!--           <link href="<%=ServiceURI%>/css/new_style.css" rel="stylesheet" type="text/css" /> -->
            <link href="<%=ServiceURI%>/css/guia.css" rel="stylesheet" type="text/css" />


           <!--[if IE 9]> <link href="<%=ServiceURI%>/css/ie9.css" rel="stylesheet" type="text/css"> <![endif]-->
            <!--[if lte IE 7]> <link href="<%=ServiceURI%>/css/ie7.css" rel="stylesheet" type="text/css"> <![endif]-->
            <script language="JavaScript" src="<%=ServiceURI%>/js/auth.js" type="text/javascript"></script>
         
        </head>

<body>


<!--  style="border: 1px solid red" -->
<!-- CABECERA -->
            <div class="container_12 ">
                 <div class="grid_12 "   id="navbar">
			<table  cellspacing="0" cellpadding="0" border="0">
			      <tbody><tr>
				<td valign="top"  background="recursos/bgtop.jpg" align="right" scope="col"><img  src="<%=ServiceURI%>/jda/images/imgtop.jpg"></td>
				    </tr>
			      </tbody>
			</table>
	    	  </div> 
          <div class="clear"></div> 

<!-- Cuerpo -->

<div class="container_12 box clear-float" >

	 <div class="grid_12" style="padding-bottom:10px;" > 
<div align="center">
<%

if (!"".equals(nombre)){

out.println("<h3>Bienvenido/a " + nombre +"&nbsp;&nbsp;   <a href=\"" + ServiceURI +"/logout\">Salir</a></h3> </br>");

}

%>

		


</div>
	 </div>

	<div class="clear"></div>  

	 <div class="grid_12" style="padding-bottom:10px;"> 
		<h2>Directorio Aplicaciones Disponibles</h2>
	 </div>

<!--Fila 1 -->
	<div class="grid_3  " style="padding-top:10px;">

         <fieldset style="height:160px;">
            <legend>Red Profesional</legend>
<div align="center" style="padding-top:10px;" ></br>
			<a href="http://ect.int.i-administracion.junta-andalucia.es/saml_login?saml_login=true ">
			<img style="width:175px;height:140px" src="<%=ServiceURI%>/jda/images/ect.png"></a>

</div>
	 </fieldset>
	</div>
	<div class="grid_3 " style="padding-top:10px;">
         <fieldset style="height:160px;">
            <legend>Catálogo Platina</legend>
<div align="center" style="padding-top:10px;" ></br>
			<a href="http://pru.platina1.i-administracion.junta-andalucia.es/catalogo/pages/control/ssoweb/cargaCredencialSSOWeb.jsf">
			<img style="width:175px;height:140px" src="<%=ServiceURI%>/jda/images/catalogoplatina.png"></a>

</div>
	 </fieldset>
	</div>
	<div class="grid_3 " style="padding-top:10px;">
         <fieldset style="height:160px;">
            <legend>De de Alta su Aplicación</legend>
	    <div align="center" style="vertical-align:middle;padding: 30% 10px 5px 10px;text-align:center;">
		<a href="mailto:dirguia.ceic@juntadeandalucia.es">Contactar: dirguia.ceic@</a>
	    </div>
	 </fieldset>
	</div>
	<div class="grid_3 " style="padding-top:10px;">
         <fieldset style="height:160px;">
            <legend>De de Alta su Aplicación</legend>
	    <div align="center" style="vertical-align:middle;padding: 30% 10px 5px 10px;text-align:center;">
		<a href="mailto:dirguia.ceic@juntadeandalucia.es">Contactar: dirguia.ceic@</a>
	    </div>
	 </fieldset>
	</div>
	<div class="clear"></div>  

<!--Fila 2 -->
</br>
	<div class="grid_3 " style="padding-top:10px;">
         <fieldset style="height:160px;">
            <legend>De de Alta su Aplicación</legend>
	    <div align="center" style="vertical-align:middle;padding: 30% 10px 5px 10px;text-align:center;">
		<a href="mailto:dirguia.ceic@juntadeandalucia.es">Contactar: dirguia.ceic@</a>
	    </div>
	 </fieldset>
	</div>
	<div class="grid_3 " style="padding-top:10px;">
         <fieldset style="height:160px">
            <legend>De de Alta su Aplicación</legend>
	    <div align="center" style="vertical-align:middle;padding: 30% 10px 5px 10px;text-align:center;">
		<a href="mailto:dirguia.ceic@juntadeandalucia.es">Contactar: dirguia.ceic@</a>
	    </div>
	 </fieldset>
	</div>
	<div class="grid_3 " style="padding-top:10px;">
         <fieldset style="height:160px">
            <legend>De de Alta su Aplicación</legend>
	    <div align="center" style="vertical-align:middle;padding: 30% 10px 5px 10px;text-align:center;">
		<a href="mailto:dirguia.ceic@juntadeandalucia.es">Contactar: dirguia.ceic@</a>
	    </div>
	 </fieldset>
	</div>
	<div class="grid_3 " style="padding-top:10px;">
         <fieldset style="height:160px">
            <legend>De de Alta su Aplicación</legend>
	    <div align="center" style="vertical-align:middle;padding: 30% 10px 5px 10px;text-align:center;">
		<a href="mailto:dirguia.ceic@juntadeandalucia.es">Contactar: dirguia.ceic@</a>
	    </div>
	 </fieldset>
	</div>
	<div class="clear"></div>  
</br>
<!--Fila 3 -->
	<div class="grid_3 " style="padding-top:10px;">
         <fieldset style="height:160px">
            <legend>De de Alta su Aplicación</legend>
	    <div align="center" style="vertical-align:middle;padding: 30% 10px 5px 10px;text-align:center;">
		<a href="mailto:dirguia.ceic@juntadeandalucia.es">Contactar: dirguia.ceic@</a>
	    </div>
	 </fieldset>
	</div>
	<div class="grid_3 " style="padding-top:10px;">
         <fieldset style="height:160px">
            <legend>De de Alta su Aplicación</legend>
	    <div align="center" style="vertical-align:middle;padding: 30% 10px 5px 10px;text-align:center;">
		<a href="mailto:dirguia.ceic@juntadeandalucia.es">Contactar: dirguia.ceic@</a>
	    </div>
	 </fieldset>
	</div>
  <div class="clear"></div> 


<div class="grid_12 footer alt-color" align="center">

<%

if ("".equals(nombre)){

out.println("<input name=\"volver\"  class=\"button primary\" type=\"button\" onclick=\"javascript:history.go(-1);\" value=\"Volver\">");

}

%>


	    
</div>

  <div class="clear"></div> 

<div class="grid_12 footer alt-color" align="center" text-align="center" >Juta de Andalucía 2012</div>

</div> <!--/div 12 -->
	


</body>
</html>
