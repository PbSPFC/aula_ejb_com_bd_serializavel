<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@page import="beans.Usuario"%>

<%
	Usuario usuario = (Usuario)request.getAttribute("usuario");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
</head>
<body>
	<div align="center">
		<fieldset>
			<legend><%= usuario.getNome()%> aqui está a solicitação da sua senha!</legend>
                        <h2>Sua senha é <%= usuario.getSenha() %></h2>
		</fieldset>
                <a href="login.html">Retornar ao login</a>
	</div>
</body>
</html>