
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
        <td> <form action="ModiAro.jsp">
              <input type="text" value="<%= id %>">
              <input type="submit" value="Modificar" >
            <form action="ElimAro.jsp">
              <input type="text" value="<%= id %>">
              <input type="submit" value="Eliminar" >
              </td></tr>
    <% } %>
    </tbody>
    <tfoot>
    <tr><td><form action="AgreAro.jsp">
              <input type="text" value="Area">
              <input type="submit" value="Agregar" >
            
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