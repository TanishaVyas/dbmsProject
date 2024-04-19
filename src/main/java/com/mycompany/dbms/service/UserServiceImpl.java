package com.mycompany.dbms.service;

import com.mycompany.dbms.Usermodel.Product;
import com.mycompany.dbms.Usermodel.Trial;
import com.mycompany.dbms.Usermodel.description;
import com.mycompany.dbms.exception.AuthException;
import com.mycompany.dbms.usersDAO.UsersDAO;
import java.util.List;

public class UserServiceImpl implements UserService {

    private static UserServiceImpl instance;

    private UserServiceImpl() {

    }

    public static synchronized UserServiceImpl getInstance() {
        if (instance == null) {
            instance = new UserServiceImpl();
        }
        return instance;
    }

    @Override
    public void register(String username, String email, String Password, String phone) {
        Trial user = new Trial();
        user.setEmail(email);
        user.setName(username);
        user.setPass(Password);
        user.setPhone(phone);
        UsersDAO.getInstance().save(user);
    }

    @Override
    public void SellerRegister(String username, String email, String Password, String phone) {
        Trial user = new Trial();
        user.setEmail(email);
        user.setName(username);
        user.setPass(Password);
        user.setPhone(phone);
        UsersDAO.getInstance().saveSeller(user);
    }

    @Override
    public Trial Auth(String username, String Password) throws AuthException {
        Trial user = UsersDAO.getInstance().findEmailAndPass(username, Password);
        if (user == null) {
            throw new AuthException("credentials are incorrect");
        } else {
            System.out.println("working autho");
        }
        return user;
    }

    public Trial SellerAuth(String username, String Password) throws AuthException {
        Trial user = UsersDAO.getInstance().findEmailAndPass_seller(username, Password);
        if (user == null) {
            throw new AuthException("credentials are incorrect");
        } else {
            System.out.println("working autho");
        }
        return user;
    }

    @Override
    public int AddProduct(String Name, String prize, String stock, String seller) {
        Product product = new Product();
        product.setName(Name);
        System.out.println(seller + stock + prize);

        product.setPrize(Integer.parseInt(prize));
        product.setStock(Integer.parseInt(stock));
        product.setSeller(Integer.parseInt(seller));

        return UsersDAO.getInstance().addProduct(product);
    }

    @Override
    public List<Product> ListProducts(String seller_id) {
        Product product = new Product();
        product.setSeller(Integer.parseInt(seller_id));
        UsersDAO.getInstance().allProductbyseller(seller_id);
        return null;
    }

    @Override
    public void AddProductdesc(String product_id, String type_product, String feature, String description_product) {
        description desc = new description();
        if (product_id == null || product_id.isEmpty()) {
            // Handle the case where product_id is not provided
            System.out.println("Product ID is not provided.");
            return;
        }

        // Convert product_id to an integer
        int productId = Integer.parseInt(product_id);
        desc.setProduct_id(productId);
        desc.setFeature(feature);
        desc.setDescription_product(description_product);
        desc.setType_product(type_product);
        UsersDAO.getInstance().addProductdesc(desc);
    }
}
