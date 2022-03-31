<%-- 
    Document   : editar
    Created on : 29-03-2022
    Author     : Alison Cielo Alaro Vino
--%>

<%@page import="com.emergentes.modelo.Persona"%>
<%
    Persona item = (Persona) request.getAttribute("miPersona");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=(item.getId()==0)? "Nuevo Registro" : "Editar Registro" %></h1>
        <form action="MainController" method="post" >
            <input type="hidden" name="id" value="<%= item.getId() %>"/>
            <table>
                <tr>
                    <td><strong>Nombre</strong></td>
                    <td><input type="text" name="nombres" value="<%= item.getNombres() %>" /></td>
                </tr>
                <tr>
                    <td><strong>Apellidos</strong></td>
                    <td><input type="text" name="apellidos" value="<%= item.getApellidos() %>" /></td>
                </tr>
                <tr>
                    <td><strong>Edad</strong></td>
                    <td><input type="text" name="edad" value="<%= item.getEdad() %>" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
