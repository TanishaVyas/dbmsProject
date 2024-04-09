package com.mycompany.dbms.service;

import com.mycompany.dbms.Usermodel.Trial;
import com.mycompany.dbms.exception.AuthException;

public interface UserService {
    void register(String username,String email, String Password,String Phone);
    Trial Auth(String username, String Password)throws AuthException;
}