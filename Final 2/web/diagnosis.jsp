<%-- 
    Document   : diagnosis
    Created on : May 1, 2019, 2:02:32 AM
    Author     : Abigailsova
--%>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Breast Cancer Diagnosis</title>
        <link rel="stylesheet" href="<c:url value='/styles/main.css'/> ">
    </head>
    <body>
        <h1>Breast Cancer Diagnosis</h1>
        <p></p>
        <form action="<c:url value='/breastCancerDiagnosis'/>" 
              method="post" class="delete">
            <input type="hidden" name="action" value="updateDiagnosis">
            
            <label class="pad_top">ID: </label>
            <input type="text" name="id" id="id"
                   value="${data.id}"><br>

            <label class="pad_top">Diagnosis:</label>
            <input type="text" name="diagnosis" id="diagnosis"
                   value="${data.diagnosis}"><br>

            <label class="pad_top">Radius Mean:</label>
            <input type="text" name="radius" id="RadiusMean"
                   value="${data.RadiusMean}"><br>
            
            <label class="pad_top">Texture Mean:</label>
            <input type="text" name="texture" id="TextureMean"
                   value="${data.TextureMean}"><br>
            
          <label class="pad_top">Perimeter Mean:</label>
            <input type="text" name="perimeter" id="PerimeterMean"
                   value="${data.PerimeterMean}"><br>

            <input type="submit" value="Update Diagnosis" class="comfirm">
        </form>

        <form action="<c:url value='/breastCancerDiagnosis'/>" method="get" class="pad_top">
            <input type="hidden" name="action" value="displayDiagnosis">
            <input type="submit" value="View Result">
        </form>
    </body>
</html>
