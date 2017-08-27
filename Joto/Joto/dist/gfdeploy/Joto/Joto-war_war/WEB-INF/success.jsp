
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nome = request.getParameter("nome");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soma</title>
    </head>
    <body>
        <div align="center">
            <fieldset>
                <legend><%= nome%> sua conta foi cadastrada com sucesso!!!</legend>
                <br />
                <a href="login.html">Login</a>
            </fieldset>
        </div>
    </body>
</html>

