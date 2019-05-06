<%-- 
    Document   : confirmDelete
    Created on : May 1, 2019, 1:27:52 AM
    Author     : Abigailsova
--%>

<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Breast Cancer Database</title>
        <link rel="stylesheet" href="<c:url value='/styles/main.css'/> ">
    </head>
    <body>
        <h1>Do you want to delete this Diagnosis?</h1>
        <img src="http://students.css.edu/asova/Cancer_3_image.jpg" alt="picture3" style="width:300px;height:400px;">
        <label>Id:</label>
        <span>${data.id}</span><br>

        <label>Diagnosis:</label>
        <span>${data.diagnosis}</span><br>

        <label>Radius Mean</label>
        <span>${data.RadiusMean}</span><br>
        
        <label>Texture Mean</label>
        <span>${data.TextureMean}</span><br>
        
         <label>Perimeter Mean</label>
        <span>${data.PerimeterMean}</span><br>

        <form action="" method="post" class="buttons">
            <input type="hidden" name="action" value="deleteDiagnosis">
            <input type="hidden" name="productCode" value="${data.id}">
            <input name="yesBtn" type="submit" value="Yes" class="buttons">
        </form>
        
        <form action="" method="get" class="buttons">
            <input type="hidden" name="action" value="displayDiagnosis">
            <input type="submit" value="No" class="buttons">
        </form>            
    </body>
</html>