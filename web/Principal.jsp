<%-- 
    Document   : Multiplicacion_OtraPagina
    Created on : 30/03/2018, 08:52:58 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">x|
        <title>Usuario Logeado</title>
    </head>
    <body>
        <h2>El usuario </h2>
        <%

            String user = request.getParameter("user");
            String password = request.getParameter("password");
            if ("edu4java".equals(user) && "eli4java".equals(password)) {
                out.println("login OK");
            } else {
                out.println("login Error");
            }
        %>       

    </body>
</html>
