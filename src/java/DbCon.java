/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
/**
 *
 * @author acer
 */
public class DbCon {
    
    public static Connection con=null;
    
   
        public Connection getCon() throws Exception
        {

            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dma?zeroDateTimeBehavior=convertToNull", "root", "root");
            return con;
	
        }
        
        public void closeCon()
        {
            try
                {
                    con.close();
                }
            catch(Exception ex)
                {
    
                }
        }
        
    
}
