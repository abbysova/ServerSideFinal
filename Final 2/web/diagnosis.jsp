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
           <link rel = "stylesheet"
    type = "text/css"
   href = "style.css" /> 
    </head>
    <body>
        <h1>Breast Cancer Diagnosis</h1>
        <img src="http://students.css.edu/asova/Cancer_4_image.jpg" alt="picture4" style="width:300px;height:400px;">
        <p></p>
        <form action="<c:url value='/breastCancerDiagnosis'/>" 
              method="post" class="BCD">
            <input type="hidden" name="action" value="updateDiagnosis">
            
            <label class="diagnosisinput">ID: </label>
            <input type="text" name="id" id="id"
                   value="${data.id}"><br>

            <label class="diagnosisinput">Diagnosis:</label>
            <input type="text" name="diagnosis" id="diagnosis"
                   value="${data.diagnosis}"><br>

            <label class="diagnosisinput">Radius Mean:</label>
            <input type="text" name="radius" id="RadiusMean"
                   value="${data.RadiusMean}"><br>
            
            <label class="diagnosisinput">Texture Mean:</label>
            <input type="text" name="texture" id="TextureMean"
                   value="${data.TextureMean}"><br>
            
          <label class="diagnosisinput">Perimeter Mean:</label>
            <input type="text" name="perimeter" id="PerimeterMean"
                   value="${data.PerimeterMean}"><br>

            <input type="submit" value="Update Diagnosis" class="buttons">
        </form>

        <form action="<c:url value='/searchResult.jsp'/>" method="get" class="buttons">
            <input type="hidden" name="action" value="displayDiagnosis">
            <input type="submit" value="View Result">
            <div class="popup" onclick="submit">
                <span class="popup" id="popup">Your data was changed to the following:<br>
                                                Id- ${data.id}<br>
                                                Diagnosis- ${data.diagnosis}<br>
                                                Radius Mean- ${data.RadiusMean}<br>
                                                Texture Mean- ${data.TextureMean}<br>
                                                Perimeter Mean- ${data.PerimeterMean}<br>
                                                                             
               </div>
        </form>
    </body>
</html>
