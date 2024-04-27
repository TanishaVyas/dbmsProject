package com.mycompany.dbms.service;

import com.mycompany.dbms.Usermodel.Product;
import com.mycompany.dbms.Usermodel.Trial;
import com.mycompany.dbms.Usermodel.allproduct;
import com.mycompany.dbms.Usermodel.cart;
import com.mycompany.dbms.exception.AuthException;
import java.util.List;

public interface UserService {
    void register(String username,String email, String Password,String Phone);
    void SellerRegister(String username, String email, String Password, String phone);
    Trial Auth(String username, String Password)throws AuthException;
    public int AddProduct(String Name, String prize,String stock,String seller);
    public List<Product> ListProducts(String seller_id);
    public void AddProductdesc (String product_id, String type_product, String feature, String description_product);
    public List<allproduct> Listallproducts();
    public List<allproduct> Listallproducts_egltools();
    public List<allproduct> Listallproducts_textbooks();
    public List<allproduct> Listallproducts_electronics();
    public void addingtocart(String customerId, String productId, String quantity, String name, String price);
    public void removefromcart(String customerId, String productId);
    public List<cart> ListAllProductsCart(String customer_id);
    public int startbilling (String customerId);
    public void deleteseller(String sellerid);
    public void deletecustomer(String customerid);
    public int totalbillprice(String billno);
    public void addshippinginfo(String billno,String firstname,String lastname, String address, String phonenumber, String total);
    public void reduceproductstock( String billnoString);
    public boolean checkquantity(String productid, String req_quantity);
}