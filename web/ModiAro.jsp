
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="ArO.jsp" %>
    <!DOCTYPE html>
    <%
        String url = "jdbc:mysql://localhost:3306/menu_electronico";
        String username = "root";
        String password = "NicoLepo72";
        Connection con = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection(url, username, password);
            PreparedStatement ps = null;
            ResultSet rs = null;
            
            ps = con.prepareStatement("UPDATE areaoperativa SET Area=? where id='" + id + "'");
            ps.setString(1, nombre);
            int res = ps.executeUpdate();

            if (res > 0) {
                %><html>Usuario modificado</html><%
            } else {
                 %><html>Error al modificar"</html><%
            }

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