package com.mycompany.dbms.usersDAO;

import com.mycompany.dbms.Usermodel.Product;
import com.mycompany.dbms.Usermodel.Trial;
import com.mycompany.dbms.Usermodel.description;
import com.mycompany.dbms.config.ConnectionConfigs;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
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
            PreparedStatement pr = connection.prepareStatement("insert into customers (username,password,phone_number,email)values(?,?,?,?)");
            pr.setString(1, user.getName());
            pr.setString(2, user.getPass());
            pr.setString(3, user.getPhone());
            pr.setString(4, user.getEmail());
            pr.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void saveSeller(Trial user) {
        Connection connection = ConnectionConfigs.getConnection();
        try {
            PreparedStatement pr = connection.prepareStatement("insert into sellers (username,password,phone_number,email)values(?,?,?,?)");
            pr.setString(1, user.getName());
            pr.setString(2, user.getPass());
            pr.setString(3, user.getPhone());
            pr.setString(4, user.getEmail());
            pr.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public Trial findEmailAndPass(String Username, String Password) {
        Connection connection = ConnectionConfigs.getConnection();
        Trial user = null;
        try {
            PreparedStatement pr = connection.prepareStatement("select * from customers where email=? and password=?");
            pr.setString(1, Username);
            pr.setString(2, Password);
            System.out.println(Username + Password);

            ResultSet rs = pr.executeQuery();
            System.out.println(" query values");
            if (rs.next()) {
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

    public List<Product> allProductbyseller(String seller_id) {
        Connection connection = ConnectionConfigs.getConnection();
        List<Product> productList = new ArrayList<>();
        try {
            CallableStatement cs = connection.prepareCall("{call GetAllProductsBySellerId(?)}");
            cs.setString(1, seller_id);
            ResultSet rs = cs.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrize(rs.getInt("prize"));
                product.setStock(rs.getInt("stock"));
                product.setSeller(rs.getInt("seller_id"));
                productList.add(product);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            // Close your connection here (if necessary)
        }
        return productList;
    }

    public int addProduct(Product user) {
        Connection connection = ConnectionConfigs.getConnection();
        int productId = -1; // Default value for productId
        try {
            Statement selectStatement = connection.createStatement();
            PreparedStatement pr = connection.prepareStatement("insert into product (Name, price, stock, seller_id) values (?, ?, ?, ?)");
            System.out.println("sellerid from dao" + user.getSeller());
            pr.setString(1, user.getName());
            pr.setInt(2, user.getPrize());
            pr.setInt(3, user.getStock());
            pr.setInt(4, user.getSeller());
            pr.executeUpdate();
          String selectSql = "SELECT " + "product_id" + " FROM " + "product" + " ORDER BY " + "product_id" + " DESC LIMIT 1";
            ResultSet resultSet = selectStatement.executeQuery(selectSql);
         
            if (resultSet.next()) {
                productId = resultSet.getInt(1);

            } else {
                throw new SQLException("Creating record failed, no primary key generated.");
            }
            //productId = resultSet.getInt(1);
            System.out.println("product id : ewwwww" + productId);
            return productId;

        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, "Error creating product", ex);
        }
        return productId;
    }

    public void addProductdesc(description user) {
        Connection connection = ConnectionConfigs.getConnection();
        try {
            PreparedStatement pr = connection.prepareStatement("insert into specifications(product_id,type_product,feature,description_product)values(?,?,?,?)");
            pr.setInt(1, user.getProduct_id());
            pr.setString(2, user.getType_product());
            pr.setString(3, user.getFeature());
            pr.setString(4, user.getDescription_product());
            pr.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public Trial findEmailAndPass_seller(String Username, String Password) {
        Connection connection = ConnectionConfigs.getConnection();
        Trial user = null;
        try {
            PreparedStatement pr = connection.prepareStatement("select * from sellers where email=? and password=?");
            pr.setString(1, Username);
            pr.setString(2, Password);
            System.out.println(Username + Password);

            ResultSet rs = pr.executeQuery();
            System.out.println(" query values");
            if (rs.next()) {
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
