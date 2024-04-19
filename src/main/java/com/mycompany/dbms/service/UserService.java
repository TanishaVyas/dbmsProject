package com.mycompany.dbms.service;

import com.mycompany.dbms.Usermodel.Product;
import com.mycompany.dbms.Usermodel.Trial;
import com.mycompany.dbms.exception.AuthException;
import java.util.List;

public interface UserService {
    void register(String username,String email, String Password,String Phone);
    void SellerRegister(String username, String email, String Password, String phone);
    Trial Auth(String username, String Password)throws AuthException;
    public int AddProduct(String Name, String prize,String stock,String seller);
    public List<Product> ListProducts(String seller_id);
    public void AddProductdesc (String product_id, String type_product, String feature, String description_product);
}