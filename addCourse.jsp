<%-- 
    Document   : add
    Created on : Nov 12, 2015, 3:18:50 PM
    Author     : yjiang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <%@include file="include/connection.jsp"%>
   <%@page errorPage="errorPage.jsp" %>
   <%@page import="java.sql.*" %>
   <jsp:useBean id="course" scope="session" class="registrarbeans.Course"/>
   <jsp:setProperty name="course" property="*" />
   <link href="style.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Course JSP Page</title>
    </head>
 
    <body>
        <h1>Add Course Summary</h1>
        <% //before inserting the record. need to check if the course 
     //is already in the course table
    //need to a selection query to check if there is a match for the connection
    
 // load the driver if needed
       //   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
    //   
    Connection con = DriverManager.getConnection(url);
    
       //create prepared statement to run a selection query
       String sql="select crn from courseschedule where crn=?";
       PreparedStatement ps = con.prepareStatement(sql);
               ps.setInt(1, course.getCrn());
               ps.executeQuery();
               ResultSet rs = ps.executeQuery();
       boolean alreadyThere = rs.next();
         ps.close();
        con.close();
        
  //if there is a match -- stop, and alert the user there is already a crn with that name
  
if(alreadyThere )// there is a match
out.println("<h2>Course with CRN"+course.getCrn()+"already exist!</h2>");
   
//else, not match, use the insertInto method needs to be called
else{ // no match -- can proceed to insert the course
//call the insertInto method 
if(course.insertInto(url)){//true - sucessful insert
  //summarize the course inserted into the database

%>
      <table border="1" width="20" cellspacing="5" cellpadding="15">
              <tbody>
              <tr>
                  <td>CRN</td>
                  <td><jsp:getProperty name="course" propert="crn"/></td>
              </tr>
              <tr>
                  <td>Course</td>
                  <td><<jsp:getProperty name="course" propert="course"/></td>  
              </tr>
              <tr>
                  <td>Title</td>
                  <td><%= course.getTitle()%></td>
              </tr>
              <tr>
                  <td>Credits</td>
                  <td><<%= course.getCredits()%></td>
              </tr>
              <tr>
                  <td>Instructor</td>
                  <td><%= course.getInstructor()%></td>
              </tr>
              <tr>
                  <td>Max Seats</td>
                  <td><%= course.getMaxseats()%></td>
              </tr>
              <tr>
                  <td>Seats Left</td>
                  <td><<%= course.getSeatsleft()%></td>
              </tr>
              <tr>
                  <td>College</td>
                  <td><%= course.getCollege()%></td>
              </tr>
          </tbody>
      </table>
              
   <%
}//end of innner if
else{ //something went wrong
    out.print("<h3>Error - course not added!</h3>");
    
}//end of inner else
    
}//end of 1st else statement 

//proceswsing the method return-- boolean (true means success, false means failure
        
//need to make a connection with the jdbc database.



        %>
           

        <footer><%@include file="include/footer.html" %></footer>
    </body>
    
</html>
