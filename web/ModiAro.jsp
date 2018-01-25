
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
    <%
        String ids = request.getParameter("id");
        String url = "jdbc:mysql://localhost:3306/menu_electronico";
        String username = "root";
        String password = "NicoLepo72";
        Connection con = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection(url, username, password);
            PreparedStatement ps = null;
            ResultSet rs = null;
            
            String sql="select * from areaoperativa where idArea='" + ids + "'";
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
                                String id = String.valueOf(rs.getInt(1));
                                String nombre = rs.getString(2);
                            %>
                            <h1>AREA OPERATIVA</h1>
                            <tr><td><%= id %></td>
                                <td><%= nombre %></td>
                                <td>
                            <% } %>
                            <form action="UpdateAro.jsp" method="post">
                                Nuevo Nombre <input type="text" name="area">
                                <input type="submit" value="Confirmar">
                            </form></td></tr>
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