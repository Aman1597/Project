/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projectpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Aman Deep
 */
public class DbManager 
{
     Connection con=null;
     PreparedStatement ps=null;
     ResultSet rs=null;
   public DbManager()
   {
       try 
       {
           Class.forName("com.mysql.jdbc.Driver");
       }
       catch(ClassNotFoundException e)
       {
           e.printStackTrace();
       }
   }
   public Connection getCon()
   {
     try
     {     
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb", "root", "");
     }
     catch(SQLException e)
     {
       con=null;
     }
     return(con);
   }
   public boolean executeNonQuery(String query)
   {
       con=getCon();
       try
       {
           ps=con.prepareStatement(query);
           ps.executeUpdate();
           return true;
       }
       catch(SQLException e)
       {
           return false;
       }
   }
   public ResultSet selectQuery(String query)
   {
       con=getCon();
       try
       {
           ps=con.prepareStatement(query);
           rs=ps.executeQuery();
       }
       catch(SQLException e)
       {
           rs=null;
       }
       return rs;
   }
   public String getDate()
   {
       Date d=new Date();
       SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
       return df.format(d);
   }
}
