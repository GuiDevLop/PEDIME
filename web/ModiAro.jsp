
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" %>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%> 
<%@ page import = "java.sql.ResultSet"%> 
<%@ page import = "java.sql.Statement"%> 
<!DOCTYPE html>
    <%
       <% int ide = request.getParameter(<%= id %>); %>
        String url = "jdbc:mysql://localhost:3306/menu_electronico";
        String username = "root";
        String password = "NicoLepo72";
        Connection con = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection(url, username, password);
            PreparedStatement ps = null;
            ResultSet rs = null;
            
            String sql= "select * from areaoperativa where idArea="+ids;
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            %>
            
            <html>
                <head>
                    <title>MODIFICAR AREA OPERATIVA</title>
                </head>
                <table>
                    <tbody>
                        <h1>AREA OPERATIVA</h1>
                            <% while (rs.next()) {
                                String id = rs.getString(1);
                                String nombre = rs.getString(2);
                            %>
                            <tr><td><%= id %></td>
                                <td><%= nombre %></td>
                                <% } %>
                                
                            <form action="UpdateAro.jsp" method="post">
                                <imput name="idarea" value=id>
                                Nuevo Nombre <input type="text" name="area">
                                <input type="submit" value="Confirmar">
                            </form></tr>
                    </tbody>
                </table>
            </html>


            
            <%
            rs.close();
            rs = null;
            ps.close();
            ps = null;
            if (con != null) {
            con.close();
            }
            } catch (Exception e) {
            e.printStackTrace();
            }
    %>