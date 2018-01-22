<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
           //Capturamos los datos enviados desde el servlet
           String Id = (request.getAttribute("CID")).toString();
           String Nom = (request.getAttribute("CNO")).toString();
       %>
        <title>CATEGORIA</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <form action="Categ_1." method="post">
            Buscar Categoria <input type="text" name="categ">
            <input type="submit">
        </form>
        <h1>Hello World! <%=Id + " " + Nom%></h1>
        
    </body>
</html>
