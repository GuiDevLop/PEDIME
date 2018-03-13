<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<!-- Los import -->
<%@ page language="java" %>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%> 
<%@ page import = "java.sql.ResultSet"%> 
<%@ page import = "java.sql.Statement"%> 
<html>
<body>
<% String categoria = request.getParameter("categoria"); %>

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
            String sql = "INSERT categoria SET Nombre=?";
            ps = con.prepareStatement(sql);
            ps.setString(1, categoria);
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


</body>
</html>
