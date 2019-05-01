<%-- 
    Document   : cancer
    Created on : May 1, 2019, 2:17:00 AM
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
        <table>
            <tr>
                <th>ID</th>
                <th>Diagnosis</th>
                <th>Radius Mean</th>
                <th>Texture</th>
                <th>Perimeter</th>
            </tr>
            <c:forEach var="i" items="${id}">
            <tr>
                <td>${i.id}</td>
                <td>${i.diganosis}</td>
                <td>${i.RadiusMean}</td>
                <td>${i.TextureMean}</td>
                <td>${i.PerimeterMean}</td>
                
                <td>
                    <a href="<c:url value='/Data?action=displayDiagnosis&dataid=${i.id}'/>">Edit</a>
                </td>
                <td>
                    <a href="<c:url value='/Data?action=deleteDiagnosis&dataid=${i.id}'/>">Delete</a>
                </td>
            </tr>
            </c:forEach>
        </table>
        <form action="<c:url value='/breastCancerDiagnosis'/>" method="get" class="pad_top">
            <input type="hidden" name="action" value="addDiagnosis">
            <input type="submit" value="Create Diagnosis">
        </form>
    </body>
</html>

