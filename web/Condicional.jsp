<%-- 
    Document   : Multiplicacion_OtraPagina
    Created on : 30/03/2018, 08:52:58 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Condicional y Switch</title>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th>Ejemplos</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <%
                            java.util.Calendar ahora = java.util.Calendar.getInstance();
                            int hora = ahora.get(java.util.Calendar.HOUR_OF_DAY);
                            if (hora > 20 || hora < 6) {
                                out.println("Buenas Noches");
                            } else if (hora >= 6 && hora <= 12) {
                                out.println("Buenos Dìas");
                            } else {
                                out.println("Buenas Tardes");
                            }
                        %>  
                    </td>
                </tr>
                <tr>
                    <td>
                        <%
                            int dia = ahora.get(java.util.Calendar.DAY_OF_WEEK);
                            if (dia == 7 || dia == 1) {
                                out.println("Fin de Semana");
                            } else {
                                out.println("Dia Laborable");
                            }
                        %>  
                    </td>
                </tr>
                <tr>
                    <td>
                        <%
                            switch (dia) {
                                case 0:
                                    out.println("Sabado");
                                    break;
                                case 1:
                                    out.println("Domingo");
                                    break;
                                case 2:
                                    out.println("Lunes");
                                    break;
                                case 3:
                                    out.println("Martes");
                                    break;
                                case 4:
                                    out.println("Miercoles");
                                    break;
                                case 5:
                                    out.println("Jueves");
                                    break;
                                case 6:
                                    out.println("Viernes");
                                    break;
                                default:
                                    out.println("Error dia");
                            }
                        %> 
                    </td>
                </tr>
            </tbody>        
        </table>
    </body>
</html>
