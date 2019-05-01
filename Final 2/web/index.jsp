<%-- 
    Document   : index
    Created on : Apr 30, 2019, 9:48:50 PM
    Author     : Abigailsova
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Breast Cancer</title>
    </head>
    <body>
        <div class="addCancer">
        <form name="addCancer">     
        <h1>Breast Cancer Diagnosis</h1>
        <label>Identification Code:</label>
        <input type="text" name="id" value="c:out value='${data.id}'/>"><br><br>
        <label>Diagnosis:</label>
        <input type="text" name="diagnosis" value="c:out value='${data.diagnosis}'/>"><br><br>
        <label> Texture Mean:</label>
        <input type="text" name="texture_Mean" value="c:out value='${data.texture_Mean}'/>"><br><br>
        <label> Radius Mean: </label>
        <input type="text" name="radius_Mean" value="c:out value='${data.radius_Mean}'/>"><br><br>
        <label>Perimeter Mean:</label>
        <input type="text" name="radius_Mean" value="c:out value='${data.radius_Mean}'/>"><br><br>
        <input type="submit" value="Enter Result" class="margin_left">
        </form>
        <form name="viewCancer">
            <input type="submit" value="View Cancer Result">
        </form>
    </div>
    </body>
</html>
