/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quizapplication;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author SeeMonster
 */
public class DBConnection {
    
    
     //SQL
    static Connection con ;
    static ResultSet res;

    public static Connection connecttoDB(){
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            try {
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizappjava", "root", "");
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        
        return con;
    }
    
    
}
