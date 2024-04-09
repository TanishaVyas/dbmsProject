package com.mycompany.dbms.usersDAO;

import com.mycompany.dbms.Usermodel.Trial;
import com.mycompany.dbms.config.ConnectionConfigs;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UsersDAO {

    private static UsersDAO instance;

    private UsersDAO() {

    }

    public static synchronized UsersDAO getInstance() {
        if (instance == null) {
            instance = new UsersDAO();
        }
        return instance;
    }

    public void save(Trial user) {
        Connection connection = ConnectionConfigs.getConnection();
        try {
            PreparedStatement pr = connection.prepareStatement("insert into users (username,password,phone_number,email)values(?,?,?,?)");
            pr.setString(1, user.getName());
            pr.setString(2, user.getPass());
            pr.setString(3, user.getPhone());
            pr.setString(4,user.getEmail());
            pr.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    public Trial findEmailAndPass(String Username,String Password){
        Connection connection = ConnectionConfigs.getConnection();
        Trial user = null;
        try {
            PreparedStatement pr = connection.prepareStatement("select * from users where email=? and password=?");
            pr.setString(1, Username);
            pr.setString(2, Password);
            System.out.println(Username + Password);
            
            ResultSet rs = pr.executeQuery();
            System.out.println(" query values");
            if(rs.next()){
                System.out.println("u change values");
                user = new Trial();
                user.setId(rs.getInt(1));
                user.setName(rs.getString(2));
                user.setPhone(rs.getString(3));
                user.setEmail(rs.getString(4));
                System.out.println("com");
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }
}
