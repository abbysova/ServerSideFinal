<%-- 
    Document   : confirmDelete
    Created on : May 1, 2019, 1:27:52 AM
    Author     : Abigailsova
--%>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta charset="utf-8">
        <title>Cancer Diagnosis Database</title>
        <link rel="stylesheet" href="<c:url value='/styles/main.css'/> ">
    </head>
    <body>
        <h1>Cancer Diagnosis Database</h1>
       <a href="<c:url value='/datatMaint?action=displayCancer'/>">View Diagnosis Information</a>
       <img src="http://students.css.edu/asova/cancer.jpg" alt="picture1" style="width:300px;height:400px;"> <%-- photo source: https://www.bbc.com/news/uk-scotland-45381947--%>
                                                                           
    </body>
</html>
