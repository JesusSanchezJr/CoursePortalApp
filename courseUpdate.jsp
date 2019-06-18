<%-- 
    Document   : courseUpdate
    Created on : Apr 17, 2018, 8:23:52 PM
    Author     : JesusSanchez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="style.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Update jsp</title>
    </head>
    <body>
        <h1>Course Update Form Page</h1>
        <table border="3" width="5" cellspacing="3" cellpadding="2"> 
           <tbody>
                <tr>
                    <td>CRN</td>
                    <td><input type="int" name="crn"/></td>
                </tr>
                <tr>
                    <td>Course</td>
                    <td><input type="text" name="course"/></td>
                </tr>
                <tr>
                    <td>Title</td>
                    <td><input type="text" name="title"/></td>
                </tr>
                <tr>
                    <td>Credits</td>
                    <td><input type="int" name="credits"/> </td>
                </tr>
                <tr>
                    <td>Instructor</td>
                    <td><input type="text" name="instructor"/> </td>
                </tr>
                <tr>
                    <td>Max Seats: </td>
                    <td><input type="int" name="maxSeats"/> </td>
                </tr>
                <tr>
                    <td>Seats Left</td>
                    <td><input type="int" name="seatsLeft"/> </td>
                </tr>
                <tr>
                    <td>College</td>
                    <td><input type="text" name="college"/> </td>
                </tr>
            </tbody>
        </table>
        <br>
        <br>
 <footer><%@include file="include/footer.html" %></footer>
    </body>
</html>
