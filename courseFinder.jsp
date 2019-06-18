<%-- 
    Document   : courseFinder
    Created on : Apr 18, 2018, 1:31:43 PM
    Author     : JesusSanchez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="style.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Course Finder</h1>
        <h3>Enter the information of the course your looking for below.</h3>
        <br><br>
        <form action="findCourse" method="get">
         <table border="5" width="10" cellspacing="5" cellpadding="5">
            <thead>
                <tr>
                    <th>CRN</th>
                    <th>Course</th>
                    <th>Title</th>
                   <%-- <th>Credits</th> --%>
                    <th>Instructor</th>
                  <%--  <th>Max Seats</th> --%>
                   <%-- <th>Seats Left</th>--%>
                    <th>College</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="text" name="crn"></td>
                    <td><input type="text" name="name"></td>
                    <td><input type="text" name="title"></td>
                
                    <td><input type="text" name="instructor"></td>
                   
                    <td><input type="text" name="college"></td>
                    <td><button action="submit" name="submit">Search</button> <button action="reset" name="reset">Clear</button></td>
                </tr>
           
            </tbody>
        </table>
     </form>
                    <br><br>
                     <footer><%@include file="include/footer.html" %></footer>
    </body>
</html>
