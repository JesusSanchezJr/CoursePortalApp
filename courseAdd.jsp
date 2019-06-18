<%-- 
    Document   : courseAdd
    Created on : Nov 12, 2015, 3:20:01 PM
    Author     : yjiang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="style.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <h1>Add a Course Here: </h1>
    <body>
           <String url ="jdbc value: jdbc:sqlserver://clay.stduen.ad.fgcu.edu:1433;databaseName=ism3232Demo;user=ism3232spring;password=springism3232"/>
      <form name="addCourse" method="post" action="addCourse.jsp" >
      <table border="1" width="20" cellspacing="5" cellpadding="15">
              <tbody>
              <tr>
                  <td>CRN</td>
                  <td><input type="text" id="crn" name="crn" size="6"</td>
              </tr>
              <tr>
                  <td>Course</td>
                  <td><input type="text" id="course" name="course" size="12"</td>
              </tr>
              <tr>
                  <td>Title</td>
                  <td><input type="text" id="title" name="title" size="20"</td>
              </tr>
              <tr>
                  <td>Credits</td>
                  <td><input type="text" id="credits" name="credits" size="20"</td>
              </tr>
              <tr>
                  <td>Instructor</td>
                  <td><input type="text" id="instructor" name="instructor"size="25"</td>
              </tr>
              <tr>
                  <td>Max Seats</td>
                  <td><inputs type="text" id="maxSeats" name="maxSeats" size="6"</td>
              </tr>
              <tr>
                  <td>Seats Left</td>
                  <td><input type="text" id="seatsLeft" name="seatsLeft"size ="6"</td>
              </tr>
              <tr>
                  <td>College</td>
                  <td><input type="text" id="college" name="college"size="25"</td>
              </tr>
          </tbody>
      </table>
      </form>
      
   <br><br>
                     <footer><%@include file="include/footer.html" %></footer>
    </body>
    </body>
</html>
