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
        <title>JSP Resultado</title>
    </head>
    <body>
        <h2>El resultado es </h2>
        <%
            int n=0, n1=0, m=0;
            n = Integer.parseInt(request.getParameter("num1"));
            n1 = Integer.parseInt(request.getParameter("num2"));
            m = n*n1;
            out.print(m);
         %>       
       
    </body>
</html>
