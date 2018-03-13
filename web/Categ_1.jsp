<%@page import="javax.servlet.annotation.WebServlet"%>
<!-- Los import -->
<%@ page language="java" %>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%> 
<%@ page import = "java.sql.ResultSet"%> 
<%@ page import = "java.sql.Statement"%> 
<html>
<body>
<h1>Consulta a CATEGORIAS</h1>
                            <form action="Categ_2.jsp">
                            <label class="sr-only" for="form-first-name">Categoría</label>
                            <input type="text" name="categoria" >
                            <input type="submit" value="Enviar" >
                        </form>
<%
    
    
try
{
   // Conexion con bd
   Class.forName("com.mysql.jdbc.Driver");
   Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/menu_electronico", "root", "NicoLepo72");
   if (!conexion.isClosed())
   {
      // La consulta
      Statement st = conexion.createStatement();
      ResultSet rs = st.executeQuery("select * from Categoria" );

      // Ponemos los resultados en un table de html
      out.println("<table border=\"1\"><tr><td>Id</td><td>Nombre</td></tr>");
      while (rs.next())
      {
         out.println("<tr>");
         out.println("<td>"+rs.getObject("idCategoria")+"</td>");
         out.println("<td>"+rs.getObject("Nombre")+"</td>");
         out.println("</tr>");
      }
      out.println("</table>");

      // cierre de la conexion
      conexion.close();
   }
   else
      // Error en la conexion
      out.println("fallo");
}
catch (Exception e)
{
   // Error en algun momento.
   out.println("Excepcion "+e);
   e.printStackTrace();
}
%>


</body>
</html>
