package com.mycompany.dbms.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectionConfigs {

    public static Connection getConnection() {
        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(ConnectionConfigs.class.getName()).log(Level.SEVERE, null, ex);
            }
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms_mini_project", "root", "123456789");

        } catch (SQLException ex) {
            Logger.getLogger(ConnectionConfigs.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }
}
