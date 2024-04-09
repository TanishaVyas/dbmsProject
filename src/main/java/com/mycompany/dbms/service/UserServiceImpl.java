package com.mycompany.dbms.service;

import com.mycompany.dbms.Usermodel.Trial;
import com.mycompany.dbms.exception.AuthException;
import com.mycompany.dbms.usersDAO.UsersDAO;

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
    /*
    @Override
    public Trial Auth(String username, String Password) {
       Trial user = UsersDAO.getInstance().findEmailAndPass(username, Password);
       if(user == null){
           throw new AuthException("credentials are incorrect");
       }
       return user;
    }

    public Trial auth(String string,String string1){
        return null;
    }
*/
    @Override
    public Trial Auth(String username, String Password) throws AuthException{
        Trial user = UsersDAO.getInstance().findEmailAndPass(username, Password);
       if(user == null){
           throw new AuthException("credentials are incorrect");
       }
       else{
           System.out.println("working autho");
       }
       return user;
    }

}
