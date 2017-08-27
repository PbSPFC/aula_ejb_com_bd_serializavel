<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@page import="beans.Usuario"%>

<%
    session = request.getSession();
    Usuario usuario = (Usuario) session.getAttribute("usuario");
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
                <legend>Bem vindo <%= usuario.getNome()%>!!!</legend>
                
                <table>
                    <tr>
                        <td>Nome: </td>
                        <td><%=usuario.getNome()%></td>
                    </tr>
                    <tr>
                        <td>Login: </td>
                        <td><%=usuario.getUsername()%></td>
                    </tr>
                    <tr>
                        <td>Senha: </td>
                        <td><%=usuario.getSenha()%></td>
                    </tr>
                </table>
                
                <a href="cadastrar.html">Cadastrar</a><br /> 
                <form action="UsuarioController" method="post">
                    <input type="hidden" name="x" value="listar" /> 
                    <input type="submit" value="Listar" />
                </form>

                <a href="?logout">Logout</a>
            </fieldset>


        </div>
    </body>
</html>