<%-- 
    Document   : cancer
    Created on : May 1, 2019, 2:17:00 AM
    Author     : Abigailsova
--%>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE hmtl>
<html>
    <head>
              <title>Breast Cancer Diagnosis</title>
        <link rel = "stylesheet"
    type = "text/css"
   href = "style.css" /> 
    </head>
    <body>
        <h1>Breast Cancer Diagnosis</h1>
        <img src="http://students.css.edu/asova/Cancer_2_image.jpg" alt="picture2" style="width:300px;height:300px;">
        <p></p>
        
                    <a href="<c:url value='/diagnosis.jsp'/>">Edit</a>
                
                    <a href="<c:url value='/confirmDelete.jsp'/>">Delete</a>
               
        <table>
            <tr>
                <th>ID</th>
                <th>Diagnosis</th>
                <th>Radius Mean</th>
                <th>Texture</th>
                <th>Perimeter</th>
            </tr>
            <tr>
                <td><input type="text" name="id"><br></td>
                <td><input type="text" name="diagnosis"><br></td>
                <td><input type="text" name="radius"><br></td>
                <td><input type="text" name="Texture"><br></td>
                <td><input type="text" name="Perimeter"><br></td>
                
               
            </tr>
        </table>
        <form action="<c:url value='/breastCancerDiagnosis'/>" method="get" class="buttons">
            <input type="hidden" name="action" value="addDiagnosis">
            <input type="submit" value="Create Diagnosis">
        </form>
    </body>
</html>

