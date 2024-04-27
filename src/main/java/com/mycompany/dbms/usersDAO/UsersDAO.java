package com.mycompany.dbms.usersDAO;

import com.mycompany.dbms.Usermodel.Product;
import com.mycompany.dbms.Usermodel.Trial;
import com.mycompany.dbms.Usermodel.allproduct;
import com.mycompany.dbms.Usermodel.cart;
import com.mycompany.dbms.Usermodel.description;
import com.mycompany.dbms.Usermodel.shipping;
import com.mycompany.dbms.config.ConnectionConfigs;
import java.lang.invoke.MethodHandles;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
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
            CallableStatement cs = connection.prepareCall("call GetAllProductsBySellerId(?)");
            cs.setString(1, seller_id);
            ResultSet rs = cs.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("product_id"));
                product.setName(rs.getString("name"));
                product.setPrize(rs.getInt("price"));
                product.setStock(rs.getInt("stock"));
                product.setSeller(rs.getInt("seller_id"));
                productList.add(product);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            // Close your connection here (if necessary)
        }
        System.out.println("Number of products: " + productList.size());
        return productList;
    }

    public int addProduct(Product user) {
        Connection connection = ConnectionConfigs.getConnection();
        int productId = -1;
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

    public List<allproduct> allproductslist() {
        Connection connection = ConnectionConfigs.getConnection();
        List<allproduct> productList = new ArrayList<>();
        try {
            PreparedStatement pr = connection.prepareStatement("SELECT p.product_id, p.name, p.price, p.stock, p.seller_id, d.type_product, d.feature, d.description_product FROM product p INNER JOIN specifications d ON p.product_id = d.product_id");
            ResultSet rs = pr.executeQuery();
            System.out.println(" query values");
            try {
                while (rs.next()) {
                    int productId = rs.getInt(1);
                    String name = rs.getString("name");
                    int price = rs.getInt("price");
                    int stock = rs.getInt("stock");
                    int sellerId = rs.getInt("seller_id");
                    String typeProduct = rs.getString("type_product");
                    String features = rs.getString("feature");
                    String description = rs.getString("description_product");
                    allproduct product = new allproduct(productId, name, price, stock, sellerId, typeProduct, features, description);
                    productList.add(product);
                }
            } catch (SQLException ex) {
                Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println(productList);
        return productList;
    }

    public List<allproduct> allproductslist_egl() {
        Connection connection = ConnectionConfigs.getConnection();
        List<allproduct> productList = new ArrayList<>();
        try {
            PreparedStatement pr = connection.prepareStatement("SELECT product_id, name, price, stock, seller_id, type_product, feature, description_product FROM ProductWithSpecifications_egltools");
            ResultSet rs = pr.executeQuery();
            System.out.println(" query values");
            try {
                while (rs.next()) {
                    int productId = rs.getInt(1);
                    String name = rs.getString("name");
                    int price = rs.getInt("price");
                    int stock = rs.getInt("stock");
                    int sellerId = rs.getInt("seller_id");
                    String typeProduct = rs.getString("type_product");
                    String features = rs.getString("feature");
                    String description = rs.getString("description_product");
                    allproduct product = new allproduct(productId, name, price, stock, sellerId, typeProduct, features, description);
                    productList.add(product);
                }
            } catch (SQLException ex) {
                Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println(productList);
        return productList;
    }

    public List<allproduct> allproductslist_textbook() {
        Connection connection = ConnectionConfigs.getConnection();
        List<allproduct> productList = new ArrayList<>();
        try {
            PreparedStatement pr = connection.prepareStatement("SELECT product_id, name, price, stock, seller_id, type_product, feature, description_product FROM ProductWithSpecifications_textbooksnotes");
            ResultSet rs = pr.executeQuery();
            System.out.println(" query values");
            try {
                while (rs.next()) {
                    int productId = rs.getInt(1);
                    String name = rs.getString("name");
                    int price = rs.getInt("price");
                    int stock = rs.getInt("stock");
                    int sellerId = rs.getInt("seller_id");
                    String typeProduct = rs.getString("type_product");
                    String features = rs.getString("feature");
                    String description = rs.getString("description_product");
                    allproduct product = new allproduct(productId, name, price, stock, sellerId, typeProduct, features, description);
                    productList.add(product);
                }
            } catch (SQLException ex) {
                Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println(productList);
        return productList;
    }

    public List<allproduct> allproductslist_electronics() {
        Connection connection = ConnectionConfigs.getConnection();
        List<allproduct> productList = new ArrayList<>();
        try {
            PreparedStatement pr = connection.prepareStatement("SELECT product_id, name, price, stock, seller_id, type_product, feature, description_product FROM ProductWithSpecifications_electronicequipment");
            ResultSet rs = pr.executeQuery();
            System.out.println(" query values");
            try {
                while (rs.next()) {
                    int productId = rs.getInt(1);
                    String name = rs.getString("name");
                    int price = rs.getInt("price");
                    int stock = rs.getInt("stock");
                    int sellerId = rs.getInt("seller_id");
                    String typeProduct = rs.getString("type_product");
                    String features = rs.getString("feature");
                    String description = rs.getString("description_product");
                    allproduct product = new allproduct(productId, name, price, stock, sellerId, typeProduct, features, description);
                    productList.add(product);
                }
            } catch (SQLException ex) {
                Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println(productList);
        return productList;
    }

    public void addToCart(cart Cart) {
        Connection connection = ConnectionConfigs.getConnection();
        try {
            PreparedStatement pr = connection.prepareStatement("INSERT INTO cart (customer_id, product_id, quantity, name, price) VALUES (?, ?, ?, ?, ?)");
            pr.setInt(1, Cart.getCustomerId());
            pr.setInt(2, Cart.getProductId());
            pr.setInt(3, Cart.getQuantity());
            pr.setString(4, Cart.getName());
            pr.setInt(5, Cart.getPrice());
            pr.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void addshippinginfo(shipping shippinginfo) {
        Connection connection = ConnectionConfigs.getConnection();
        try {
            PreparedStatement pr = connection.prepareStatement("INSERT INTO shippinginfo(billno,firstname,lastname,Address,phonenumber,total) VALUES (?, ?, ?, ?, ?, ?)");
            pr.setInt(1, shippinginfo.getBillno());
            pr.setString(2, shippinginfo.getFirstname());
            pr.setString(3, shippinginfo.getLastname());
            pr.setString(4, shippinginfo.getAddress());
            pr.setInt(5, shippinginfo.getPhonenumber());
            pr.setInt(6, shippinginfo.getTotal());
            pr.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public int calctotal(int billno) {
        Connection connection = ConnectionConfigs.getConnection();
        int total = 0;
        try {
            PreparedStatement pr = connection.prepareStatement("SELECT calculate_total_price(?)");
            pr.setInt(1, billno);
            ResultSet rs = pr.executeQuery();
            System.out.println("Query executed");
            try {
                if (rs.next()) {
                    total = rs.getInt(1);
                }
            } catch (SQLException ex) {
                Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
            }

        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return total;
    }

    public List<cart> allproductscart(int customer_id) {
        Connection connection = ConnectionConfigs.getConnection();
        List<cart> productList = new ArrayList<>();
        try {
            PreparedStatement pr = connection.prepareStatement("SELECT * FROM cart WHERE customer_id = ?");
            pr.setInt(1, customer_id);
            ResultSet rs = pr.executeQuery();
            System.out.println("Query executed");
            try {
                while (rs.next()) {
                    int customerId = rs.getInt("customer_id");
                    int productId = rs.getInt("product_id");
                    int price = rs.getInt("price");
                    int quantity = rs.getInt("quantity");
                    String name = rs.getString("name");
                    cart product = new cart(customerId, productId, quantity, name, price);
                    productList.add(product);
                }
            } catch (SQLException ex) {
                Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        System.out.println(productList);
        return productList;
    }

    public void deleteuserid(int sellerid) {
        Connection connection = ConnectionConfigs.getConnection();
        try {
            CallableStatement cs = connection.prepareCall("CALL DeleteSellerData(?)");
            cs.setInt(1, sellerid);
            ResultSet rs = cs.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteuserid(String customerid) {
        int customer_id = Integer.parseInt(customerid);
        Connection connection = ConnectionConfigs.getConnection();
        try {
            CallableStatement cs = connection.prepareCall("CALL DeletecustomerData(?)");
            cs.setInt(1, customer_id);
            ResultSet rs = cs.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public int callProcessBilling(int customerId) {
        Connection connection = null;
        CallableStatement callableStatement = null;
        boolean success = false;
        int billno = -1;
        try {
            // Get connection
            connection = ConnectionConfigs.getConnection();
            System.out.println("beforer");
            // Prepare the call to the procedure
            String sql = "call process_cart(?,?)";
            callableStatement = connection.prepareCall(sql);

            // Set input parameter
            callableStatement.setInt(1, customerId);
            callableStatement.setInt(2, Types.INTEGER);
            // Execute the procedure
            callableStatement.execute();
            System.out.println("after");
            billno = callableStatement.getInt(2);
            // Get the result
            success = true;
        } catch (SQLException ex) {
            // Handle exceptions
            ex.printStackTrace();
        } finally {
            // Close resources
            try {
                if (callableStatement != null) {
                    callableStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return billno;
    }

    public void removefromCart(int customer_id, int product_id) {
        Connection connection = ConnectionConfigs.getConnection();
        try {
            PreparedStatement pr = connection.prepareStatement("DELETE FROM cart WHERE customer_id = ? and product_id = ?");
            pr.setInt(1, customer_id);
            pr.setInt(2, product_id);
            pr.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void reduceStock(int billno) {
        Connection connection = ConnectionConfigs.getConnection();
        try {
            PreparedStatement pr = connection.prepareStatement("CALL reduceStock(?)");
            pr.setInt(1, billno);
            pr.executeUpdate();
            System.out.println("Executeddddddddddd");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public boolean checkquantity(int productid, int req_quantity) {
        Connection connection = ConnectionConfigs.getConnection();
        boolean result = false;
        try {
            PreparedStatement pr = connection.prepareStatement("select checkAvailableQuantity(?,?)");
            pr.setInt(1, productid);
            pr.setInt(2, req_quantity);
            ResultSet rs = pr.executeQuery();
            while (rs.next()) {
                result = rs.getBoolean(1);
            }
            System.out.println("Executed  quantity check");
            return result;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }
}
