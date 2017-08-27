<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@page import="beans.Usuario"%>
<%
    List<Usuario> lista = (List<Usuario>) request.getAttribute("lista");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Lista</title>
    </head>
    <body>
        <div align="center">
            <h1>Lista</h1>
            <table border="1">
                <tr>
                    <th>Nome</th>
                    <th>Login</th>
                    <th>Senha</th>
                </tr>
                <% for (Usuario usuario : lista) {%>
                <tr>

                    <td>Nome: <input type="text" name="nome" value="<%=usuario.getNome()%>" /></td>
                    <td>Login: <input type="text" name="login" value="<%=usuario.getUsername()%>" /></td>
                    <td>Senha: <input type="text" name="senha" value="<%=usuario.getSenha()%>" /></td>

                </tr>
                <% }%>
            </table>
            <a href="index.html">Index</a>
        </div>
    </body>
</html>