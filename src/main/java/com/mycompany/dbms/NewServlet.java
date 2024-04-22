/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.dbms;

import com.mycompany.dbms.Usermodel.Product;
import com.mycompany.dbms.Usermodel.Trial;
import com.mycompany.dbms.Usermodel.allproduct;
import com.mycompany.dbms.Usermodel.cart;
import com.mycompany.dbms.exception.AuthException;
import com.mycompany.dbms.service.UserServiceImpl;
import com.mycompany.dbms.usersDAO.UsersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Tanisha
 */
@WebServlet(name = "NewServlet", urlPatterns = {"/"})
public class NewServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Trial loggedInUser = new Trial();

        String uri = request.getRequestURI();

        if (uri.equals("/")) {
            request.getRequestDispatcher("/WEB-INF/Pages/home.jsp").forward(request, response);
        } else if (uri.equals("/Main")) {

            request.setAttribute("welcome", "Dumbass");
            request.getRequestDispatcher("/WEB-INF/Pages/Main.jsp").forward(request, response);
        } else if (uri.equals("/Register")) {
            String method = request.getMethod();
            System.out.println(method);
            if (method.equals("GET")) {
                request.getRequestDispatcher("/WEB-INF/Pages/Register.jsp").forward(request, response);
            } else {
                System.out.println("working else");
                String username = request.getParameter("Username");
                String password = request.getParameter("Password");
                String emailid = request.getParameter("Email");
                String phone = request.getParameter("Phone");
                String role = request.getParameter("userRole");
                System.out.println(role);
                if ("Customer".equals(role)) {
                    UserServiceImpl.getInstance().register(username, emailid, password, phone);
                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("message", "Registration successful!!");
                    response.sendRedirect("/login");
                    System.out.println("entered if");
                } else {
                    UserServiceImpl.getInstance().SellerRegister(username, emailid, password, phone);
                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("message", "Registration successful!!");
                    response.sendRedirect("/login");
                }
            }
        } else if (uri.equals("/logout")) {
            request.getSession().invalidate();
            response.sendRedirect("/");
        } else if (uri.equals("/login")) {
            String method = request.getMethod();
            System.out.println(method);
            if (method.equals("GET")) {
                request.getRequestDispatcher("/WEB-INF/Pages/Login.jsp").forward(request, response);
            } else {
                System.out.println(" u working");
                String username = request.getParameter("Username");
                String password = request.getParameter("Password");
                String role = request.getParameter("userRole");
                System.out.println(role);
                if ("Customer".equals(role)) {
                    try {
                        System.out.println("enter try");
                        loggedInUser = UserServiceImpl.getInstance().Auth(username, password);
                        HttpSession session = request.getSession();
                        session.setAttribute("user", loggedInUser);
                        session.setAttribute("id", loggedInUser.getId());
                        System.out.println(loggedInUser.getId());
                        Cookie cookie = new Cookie("id", loggedInUser.getId().toString());
                        cookie.setMaxAge(3600); // Cookie will expire in 1 hour (you can adjust this as needed)
                        response.addCookie(cookie);
                        request.getRequestDispatcher("/WEB-INF/Pages/customersection.jsp").forward(request, response);
                    } catch (AuthException ex) {
                        request.setAttribute("errorMessage", ex.getMessage());
                        request.getRequestDispatcher("/WEB-INF/Pages/Error.jsp").forward(request, response);
                    }
                } else {
                    try {
                        System.out.println("enter try");
                        loggedInUser = UserServiceImpl.getInstance().SellerAuth(username, password);
                        System.out.println("please");
                        HttpSession session = request.getSession();
                        System.out.println("work please");
                        session.setAttribute("user", loggedInUser);
                        session.setAttribute("id", loggedInUser.getId());
                        System.out.println(loggedInUser.getId());
                        Cookie cookie = new Cookie("id", loggedInUser.getId().toString());
                        cookie.setMaxAge(3600); // Cookie will expire in 1 hour (you can adjust this as needed)
                        response.addCookie(cookie);
                        request.getRequestDispatcher("/WEB-INF/Pages/sellerAccountsection.jsp").forward(request, response);
                    } catch (AuthException ex) {
                        request.setAttribute("errorMessage", ex.getMessage());
                        request.getRequestDispatcher("/WEB-INF/Pages/Error.jsp").forward(request, response);
                    }
                }

            }
        } else if (uri.equals("/Add_Product")) {
            String method = request.getMethod();
            System.out.println(method);
            if (method.equals("GET")) {
                //request.getRequestDispatcher("/WEB-INF/Pages/Add_Product.jsp").forward(request, response);
                request.getRequestDispatcher("/WEB-INF/Pages/PostProduct1.jsp").forward(request, response);
            } else {
                System.out.println(" u working");
                String Name = request.getParameter("Name");
                String Prize = request.getParameter("Prize");
                String Stock = request.getParameter("Stock");
                String id = "";
                System.out.println("productenter");
                Cookie[] cookies = request.getCookies();
                if (cookies != null) {
                    for (Cookie cookie : cookies) {
                        if (cookie.getName().equals("id")) {
                            id = cookie.getValue();
                            // Use the userID here
                            break;
                        }
                    }
                }
                System.out.println(id);
                int productId;
                productId = UserServiceImpl.getInstance().AddProduct(Name, Prize, Stock, id);
                System.out.println("please");
                request.setAttribute("productId", productId);
                System.out.println("product id before cookiee: " + productId);
                Cookie cookieee = new Cookie("productId", productId + "");
                cookieee.setMaxAge(3600); // Cookie will expire in 1 hour (you can adjust this as needed)
                response.addCookie(cookieee);
                //session.setAttribute("product_id", loggedInUser.getId());
                System.out.println("work please");
                request.getRequestDispatcher("/WEB-INF/Pages/PostProduct2.jsp").forward(request, response);
            }
        } else if (uri.equals("/Add_Product_desc")) {
            String method = request.getMethod();
            System.out.println(method);
            if (method.equals("GET")) {
                request.getRequestDispatcher("/WEB-INF/Pages/PostProduct2.jsp").forward(request, response);
            } else {
                System.out.println(" u working");
                String Type_Product = request.getParameter("Type_Product");
                String Feature = request.getParameter("features");
                String description_product = request.getParameter("description_product");
                String id = "";

                System.out.println("productdescenter");
                //String productId = (request.getParameter("productId"));
                Cookie[] cookies = request.getCookies();
                if (cookies != null) {
                    for (Cookie cookieee : cookies) {
                        if (cookieee.getName().equals("productId")) {
                            id = cookieee.getValue();
                            System.out.println("product id servlet " + id);
                            // Use the userID here
                            break;
                        }
                    }
                }
                //System.out.println("productid"+productId);
                System.out.println(id);
                UserServiceImpl.getInstance().AddProductdesc(id, Type_Product, Feature, description_product);
                System.out.println("please");
                System.out.println("work please");
                request.getRequestDispatcher("/WEB-INF/Pages/ProductPostedSucessfully.jsp").forward(request, response);
            }
        } else if (uri.equals("/myproduct")) {
            String sellerId = "";
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("id")) {
                        sellerId = cookie.getValue();
                        break;
                    }
                }
            }
            System.out.println(sellerId);
// Retrieve the list of products for the seller
            List<Product> productList = UserServiceImpl.getInstance().ListProducts(sellerId);
            // Set the productList as a request attribute
            request.setAttribute("productList", productList);
            // Forward the request to your JSP page
            System.out.println(productList);
            request.getRequestDispatcher("/WEB-INF/Pages/allProductsListedBySeller.jsp").forward(request, response);
        } else if(uri.equals("/RemovefromCart")){
            String productId = request.getParameter("productId");
            String id = "";
            //System.out.println("productenter");
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("id")) {
                        id = cookie.getValue();
                        break;
                    }
                }
            }
            System.out.println("custoomer id" + id);
            System.out.println("product id"+productId);
            UserServiceImpl.getInstance().removefromcart(id, productId);
            response.sendRedirect("/cart");
        }
        else if (uri.equals("/AddToCart")) {
            String productId = request.getParameter("productId");
            String productName = request.getParameter("productName");
            String productDescription = request.getParameter("productDescription");
            String productFeatures = request.getParameter("productFeatures");
            String productPrice = request.getParameter("productPrice");
            String id = "";
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("id")) {
                        id = cookie.getValue();
                        // Use the userID here
                        break;
                    }
                }
            }            
            System.out.println("custoomer id" + id);
            System.out.println("Product ID: " + productId);
            System.out.println("Product Name: " + productName);
            System.out.println("Product Description: " + productDescription);
            System.out.println("Product Features: " + productFeatures);
            System.out.println("Product Price: " + productPrice);
            UserServiceImpl.getInstance().addingtocart(id, productId, "1", productName, productPrice);
            response.sendRedirect("/accountsection");
        } 
        else if (uri.equals("/cart")) {
            String id = "";
            //System.out.println("productenter");
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("id")) {
                        id = cookie.getValue();
                        break;
                    }
                }
            }
            System.out.println("custoomer id" + id);
            List<cart> productList = UserServiceImpl.getInstance().ListAllProductsCart(id);
            request.setAttribute("allproductList", productList);
            System.out.println(productList);
            request.getRequestDispatcher("/WEB-INF/Pages/cart.jsp").forward(request, response);
        } 
        else if (uri.equals("/buy")) {
            String method = request.getMethod();
            System.out.println("buy:   line 256 " + method);
            if (method.equals("GET")) {
                request.getRequestDispatcher("/WEB-INF/Pages/cart.jsp").forward(request, response);
            } else {
                String id = "";
                // Retrieve user ID from cookies
                Cookie[] cookies = request.getCookies();
                if (cookies != null) {
                    for (Cookie cookie : cookies) {
                        if (cookie.getName().equals("id")) {
                            id = cookie.getValue();
                            // Use the userID here
                            break;
                        }
                    }
                }
                int billnumber = UserServiceImpl.getInstance().startbilling(id);
                System.out.println("billno generested: " + billnumber);
                if (billnumber != -1) {
                    Cookie billcookie = new Cookie("billnumber", String.valueOf(billnumber));
                    billcookie.setMaxAge(3600);
                    response.addCookie(billcookie);
                    response.sendRedirect("/billing");
                    //request.getRequestDispatcher("/WEB-INF/Pages/billing.jsp").forward(request, response);
                } else {
                    response.sendRedirect("/error");
                }
            }
        } 
        else if (uri.equals("/accountsection")) {
            List<allproduct> allproductsList = UserServiceImpl.getInstance().Listallproducts();
            request.setAttribute("allproductsList", allproductsList);
            System.out.println(allproductsList);
            request.getRequestDispatcher("/WEB-INF/Pages/eachprod.jsp").forward(request, response);
        } 
        else if (uri.equals("/sellersection")) {
            request.getRequestDispatcher("/WEB-INF/Pages/sellersection.jsp").forward(request, response);
        } 
        else if (uri.equals("/orderplaced")) {
            request.getRequestDispatcher("/WEB-INF/Pages/orderplaced.jsp").forward(request, response);}
        else if (uri.equals("/selleraccountsection")) {
            request.getRequestDispatcher("/WEB-INF/Pages/sellerAccountsection.jsp").forward(request, response);
        } 
        else if (uri.equals("/customerprof")) {
            request.getRequestDispatcher("/WEB-INF/Pages/customersection.jsp").forward(request, response);
        } 
        else if (uri.equals("/accset")) {
            request.getRequestDispatcher("/WEB-INF/Pages/custaccsettings.jsp").forward(request, response);
        } 
        else if (uri.equals("/deleteseller")) {
            String method = request.getMethod();
            System.out.println("delete" + method);
            if (method.equals("GET")) {
                request.getRequestDispatcher("/WEB-INF/Pages/sellerAccountsection.jsp").forward(request, response);
            } else {
                String sellerId = "";
                Cookie[] cookies = request.getCookies();
                if (cookies != null) {
                    for (Cookie cookie : cookies) {
                        if (cookie.getName().equals("id")) {
                            sellerId = cookie.getValue();
                            break;
                        }
                    }
                }
                System.out.println(sellerId);
                UserServiceImpl.getInstance().deleteseller(sellerId);
                request.getRequestDispatcher("/WEB-INF/Pages/Login.jsp").forward(request, response);
            }

        } 
        else if (uri.equals("/deletecustomer")) {
            String method = request.getMethod();
            System.out.println("delete" + method);
            if (method.equals("GET")) {
                request.getRequestDispatcher("/WEB-INF/Pages/custaccsettings.jsp").forward(request, response);
            } else {
                String Id = "";
                Cookie[] cookies = request.getCookies();
                if (cookies != null) {
                    for (Cookie cookie : cookies) {
                        if (cookie.getName().equals("id")) {
                            Id = cookie.getValue();
                            break;
                        }
                    }
                }
                System.out.println(Id);
                UserServiceImpl.getInstance().deletecustomer(Id);
                request.getRequestDispatcher("/WEB-INF/Pages/Login.jsp").forward(request, response);
            }
        } 
        else if (uri.equals("/billing")) {
            String method = request.getMethod();
            System.out.println("bill" + method);
            if (method.equals("GET")) {
                request.getRequestDispatcher("/WEB-INF/Pages/billing.jsp").forward(request, response);
            } else {
                String billnoString = "";
                // Retrieve user ID from cookies
                Cookie[] cookies = request.getCookies();
                if (cookies != null) {
                    for (Cookie cookie : cookies) {
                        if (cookie.getName().equals("billnumber")) {
                            billnoString = cookie.getValue();
                            break;
                        }
                    }
                }
                System.out.println(billnoString);
                int bill = UserServiceImpl.getInstance().totalbillprice(billnoString);
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String address = request.getParameter("address");
                String phone = request.getParameter("phone_number");
                String total = String.valueOf(bill);
                UserServiceImpl.getInstance().addshippinginfo(billnoString, firstname, lastname, address, phone, total);
                response.sendRedirect("/orderplaced");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
