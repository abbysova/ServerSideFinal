<%-- 
    Document   : confirmDelete
    Created on : May 1, 2019, 1:27:52 AM
    Author     : Abigailsova
Index page aka Welcome page
--%>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <title>Cancer Diagnosis Database</title>
           <link rel = "stylesheet"
    type = "text/css"
   href = "style.css" /> 
    </head>
    <body>
        <img src="http://students.css.edu/asova/cancer.jpg" alt="picture1" style="width:300px;height:300px;"> <!--Image resource 1-->
        <h1>Cancer Diagnosis Database</h1>
        <a href="<c:url value='/user.html'/>">Physician Login</a> <!--Link to physican login page --> 
                                                                           
    </body>
</html> 
