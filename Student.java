/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package registrarbeans;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author mpenderg
 */
public class Student implements Serializable{
   private String firstName = "";
   private String lastName = "";
   private String id = "";
   private String password = "";
    
   private boolean loggedIn = false;
    
    public Student()
    {
        //set initial datafields
    }
    //accessor methods
   public boolean isLoggedIn()
   {
       return loggedIn;
   }  
   
   public  String getFirstName()
    {
      return firstName;
    }
   
    public  String getLastName()
    {
      return lastName;
    } 
    
   public  String getId()
    {
      return id;
    }
   public  String getPassword()
    {
      return password;
    }
   //mutator methods
   public void setFirstName(String f)
   {
     firstName = f;
   }
   
   public void setLasttName(String l)
   {
     lastName = l;
   }
      
   public void setId(String i)
   {
     id = i;
   }
    
   public void setPassword(String p)
   {
     password = p;
   }
   
   public boolean login(String url)
   {    
   // database work
   //               
        try{
         // open a connection
            // load the driver if necessary
          Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
          Connection con = DriverManager.getConnection(url);
      
      // create the sql command
          PreparedStatement prep = con.prepareStatement("Select lastname, "
                  + "firstname from Students where studentid=? and password=?");  
          prep.setString(1,id);
          prep.setString(2,password);
        
          ResultSet rs  = prep.executeQuery();
          if(rs.next())
          {
           lastName = rs.getString(1);
           firstName = rs.getString(2);
           loggedIn = true;
          }
          else
            loggedIn = false;
          prep.close();
          con.close();      
         }
        catch(Exception sqlex)
        {
          loggedIn = false;  
        }          
        return loggedIn;
   }
   
   public void logOut()
   {
     loggedIn = false;
   }
}