package com.mycompany.dbms.service;

import com.mycompany.dbms.Usermodel.Product;
import com.mycompany.dbms.Usermodel.Trial;
import com.mycompany.dbms.Usermodel.allproduct;
import com.mycompany.dbms.Usermodel.cart;
import com.mycompany.dbms.Usermodel.description;
import com.mycompany.dbms.Usermodel.shipping;
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
        return UsersDAO.getInstance().allProductbyseller(seller_id);
        //return null;
    }

    @Override
    public void AddProductdesc(String product_id, String type_product, String feature, String description_product) {
        description desc = new description();
        if (product_id == null || product_id.isEmpty()) {
            System.out.println("Product ID is not provided.");
            return;
        }
        int productId = Integer.parseInt(product_id);
        desc.setProduct_id(productId);
        desc.setFeature(feature);
        desc.setDescription_product(description_product);
        desc.setType_product(type_product);
        UsersDAO.getInstance().addProductdesc(desc);
    }

    @Override
    public List<allproduct> Listallproducts() {
        return UsersDAO.getInstance().allproductslist();
    }

    @Override
    public void addingtocart(String customerId, String productId, String quantity, String name, String price) {
        cart Cart =new cart();
        int CustomerId = !customerId.isEmpty() ? Integer.parseInt(customerId) : 0;
        int ProductId =Integer.parseInt(productId);
        int Quantity =!quantity.isEmpty() ? Integer.parseInt(quantity) : 1;
        int Price = Integer.parseInt(price);
        
        Cart.setCustomerId(CustomerId);
        Cart.setName(name);
        Cart.setProductId(ProductId);
        Cart.setPrice(Price);
        Cart.setQuantity(Quantity);
        
        
        UsersDAO.getInstance().addToCart(Cart);
    }

    @Override
    public List<cart> ListAllProductsCart(String customer_id) {
        cart Cart = new cart();
        Cart.setCustomerId(Integer.parseInt(customer_id));
        int customerid = Integer.parseInt(customer_id);
        return UsersDAO.getInstance().allproductscart(customerid);
    
    }

    @Override
    public int startbilling(String customerId) {
        int customerid = Integer.parseInt(customerId);
        return UsersDAO.getInstance().callProcessBilling(customerid);
    }

    @Override
    public void deleteseller(String sellerid) {
       int seller_id = Integer.parseInt(sellerid);
       UsersDAO.getInstance().deleteuserid(seller_id);
    }

    @Override
    public int totalbillprice(String billno) {
        int bill_no = Integer.parseInt(billno);
        return UsersDAO.getInstance().calctotal(bill_no);
    }

    @Override
    public void addshippinginfo(String billno,String firstname,String lastname, String address, String phonenumber, String total) {
        shipping info = new shipping();
        info.setBillno(Integer.parseInt(billno));
        info.setFirstname(firstname);
        info.setLastname(lastname);
        info.setPhonenumber(Integer.parseInt(phonenumber));
        info.setAddress(address);
        info.setTotal(Integer.parseInt(total));
        UsersDAO.getInstance().addshippinginfo(info);
    }

    @Override
    public void deletecustomer(String customerid) {
      UsersDAO.getInstance().deleteuserid(customerid);
    }

    @Override
    public void removefromcart(String customerId, String productId) {
        int customer_id =Integer.parseInt(customerId);
        int product_id =Integer.parseInt(productId);
        UsersDAO.getInstance().removefromCart(customer_id,product_id);
    }

    @Override
    public void reduceproductstock(String billnoString) {
        int billno = Integer.parseInt(billnoString);
        UsersDAO.getInstance().reduceStock(billno);
    }

    @Override
    public List<allproduct> Listallproducts_egltools() {
        return UsersDAO.getInstance().allproductslist_egl();
    }

    @Override
    public List<allproduct> Listallproducts_textbooks() {
        return UsersDAO.getInstance().allproductslist_textbook();
    }

    @Override
    public List<allproduct> Listallproducts_electronics() {
        return UsersDAO.getInstance().allproductslist_electronics();
    }

    @Override
    public boolean checkquantity(String productid, String req_quantity) {
        int product_id = Integer.parseInt(productid);
        int quantity = Integer.parseInt(req_quantity);
        return UsersDAO.getInstance().checkquantity(product_id, quantity);
    }
}
