<%-- 
    Document   : findCourse
    Created on : Apr 18, 2018, 12:53:02 PM
    Author     : JesusSanchez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="course" scope="session" class="registrarbeans.Course"/>
<jsp:setProperty name="course" property="*" />
<link href="style.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Course that match your search</h1>
        <table border="5" width="10" cellspacing="5" cellpadding="5">
            <thead>
                <tr>
                    <th>CRN</th>
                    <th>Course</th>
                    <th>Title</th>
                    <th>Credits</th>
                    <th>Instructor</th>
                    <th>Max Seats</th>
                    <th>Seats Left</th>
                    <th>College</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%= course.getCrn()%></td>
                    <td><%= course.getCourse()%></td>
                    <td><%= course.getTitle()%></td>
                    <td><%= course.getCredits()%></td>
                    <td><%= course.getInstructor()%></td>
                    <td><%= course. getMaxseats()%></td>
                    <td><%= course.getSeatsleft()%> </td>
                    <td><%= course.getCollege()%></td>
                    <td><button action="courseDelete.jsp" name="delete">Delete</button> <button action="update" name="update">Update</button></td>
                </tr>
            
            </tbody>
        </table>
                    <br>
                    <br>
                     <footer><%@include file="include/footer.html" %></footer>


    </body>
</html>
