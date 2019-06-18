/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package registrarbeans;
import java.io.Serializable;
import java.sql.*;

/**
 *
 * @author Mark Pendergast
 */
public class Course implements Serializable{
  private  int crn = 0;
  private  String course = "";
  private  String title = "";
  private  int credits = 0;
  private  String instructor = "";
  private  int maxseats = 0;
  private  int seatsleft = 0;
  private  String college = "";
    
    public Course()
    {
       //set default values 
    }
    
    /*
    accessor methods, be careful of naming, must be get followed by 
    variable name with first letter in caps
    */
    public int getCrn()
    {
      return crn;
    }
    public String getCourse()
    {
      return course;
    }
     public String getTitle()
    {
      return title;
    }
    
    public int getCredits()
    {
      return credits;
    }
    public String getInstructor()
    {
      return instructor;
    }
    public int getMaxseats()
    {
      return maxseats;
    }
     public int getSeatsleft()
    {
      return seatsleft;
    }
     public String getCollege()
    {
      return college;
    }
    /*
     mutator methods, be careful of naming, must be set followed by variable 
     name with first letter in caps
    */
    public void setCrn(int n)
    {
      crn = n;
    }
    
    public void setCourse(String str)
    {
      course = str;
    }
    
    public void setTitle(String str)
    {
      title = str;
    }
    
    public void setCredits(int n)
    {
      credits = n;
    }
    
     public void setInstructor(String str)
    {
      instructor = str;
    }
     
    public void setMaxseats(int n)
    {
      maxseats = n;
    } 
     
    public void setSeatsleft(int n)
    {
      seatsleft = n;
    }
     
    public void setCollege(String str)
    {
      college = str;
    }
    
  @Override  
    public String toString()
    {
      return crn+" "+course+" "+title;
    }
 
// Database methods
  public boolean insertInto(String url)
  {   
   // database work               
        try{ //may not be able to connect to database or sql error
         // open a connection     
          // load the driver if needed
          Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
         Connection con = DriverManager.getConnection(url);
      // ("jdbc:sqlserver://rubble.student.ad.fgcu.edu:1433;
         //databaseName=sp12ism3232x;user=s12ISM3232;password=s12ISM3232;");
      // create the sql command        
           PreparedStatement prep = con.prepareStatement("insert into "
                  + "courseschedule (crn, course, title, credits, instructor, "
                  + "maxseats, seatsleft, college) values (?,?,?,?,?,?,?,?)");  
          prep.setInt(1,crn);
          prep.setString(2,course);
          prep.setString(3,title);
          prep.setInt(4,credits);
          prep.setString(5,instructor);
          prep.setInt(6,maxseats);
          prep.setInt(7,seatsleft);
          prep.setString(8,college);
          //execute query and return number of records inserted
          int result = prep.executeUpdate();
          //close the preparedStatement and connection to save resources
          prep.close();
          con.close();
          if(result == 1)//only insert one record
          {     
            return true; //indicate successful insertation
          }
          else
          {
            return false; //record not inserted
          }
         
    } //end of try block
        catch(Exception sqlex)
        {             
           return false;
        }     
  }  
  
}
