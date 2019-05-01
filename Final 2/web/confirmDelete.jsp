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

        <form action="" method="post" class="delete">
            <input type="hidden" name="action" value="deleteDiagnosis">
            <input type="hidden" name="productCode" value="${data.id}">
            <input name="yesBtn" type="submit" value="Yes" class="confirm">
        </form>
        
        <form action="" method="get" class="delete">
            <input type="hidden" name="action" value="displayDiagnosis">
            <input type="submit" value="No" class="confirm">
        </form>            
    </body>
</html>