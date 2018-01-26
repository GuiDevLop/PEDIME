<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
    <%
        
        String url = "jdbc:mysql://localhost:3306/menu_electronico";
        String username = "root";
        String password = "NicoLepo72";
        Connection con = null;
        response.setContentType("text/html;charset=UTF-8");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection(url, username, password);
            PreparedStatement ps = null;
            ResultSet rs = null;
            String Nom = request.getParameter("area");
            int id = Integer.parseInt(request.getParameter("idearea"));
            String sql = "UPDATE areaoperativa SET Area=? where idArea=1";
            ps = con.prepareStatement(sql);
            ps.setString(1, Nom);
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