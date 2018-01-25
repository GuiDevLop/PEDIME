
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<%
    String url = "jdbc:mysql://localhost:3306/menu_electronico";
    String username = "root";
    String password = "NicoLepo72";
    Connection con = null;
     
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection(url, username, password);
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql="select * from areaoperativa";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();


    %>
<html>
    <head>
        <title>AREA OPERATIVA</title>
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
        <td> <a href='ModiAro.jsp?=<%= id %>'>
              <input type="submit" value="Modificar"/></a>
            <a href='/ElimAro.jsp?id=<%= id %>'>
              <input type="submit" value="Eliminar"/></a></td></tr>
    <% } %>
    </tbody>
    <tfoot>
    <tr><td><a href='/AgreAro.jsp'>
        <input type="submit" name="action" value="Agregar"/></a>
    </td>
    </tr>
    </tfoot>
    </table>
</html>
<%
    rs.close();rs=null;
    ps.close();ps=null;
    if (con!=null)
      con.close();
   } catch (Exception e) {
     e.printStackTrace();
   }
%>