/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.dbms;

import com.mycompany.dbms.Usermodel.Trial;
import com.mycompany.dbms.exception.AuthException;
import com.mycompany.dbms.service.UserServiceImpl;
import com.mycompany.dbms.usersDAO.UsersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
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

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String uri = request.getRequestURI();
        ArrayList<Trial> user = new ArrayList<>();
        user.add(new Trial("name", "20", "nam@mail"));
        user.add(new Trial("nme", "20", "nam@mail"));
        user.add(new Trial("n", "2", "n@mail"));
        request.setAttribute("user1", user);
        if (uri.equals("/")) {
            request.getRequestDispatcher("/WEB-INF/Pages/Index.jsp").forward(request, response);
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
                if (role == "Seller"){UserServiceImpl.getInstance().register(username, emailid, password, phone);
                response.sendRedirect("/login");}
                
            }
        } else if (uri.equals("/login")) {
            String method = request.getMethod();
            System.out.println(method);
            if (method.equals("GET")) {
                request.getRequestDispatcher("/WEB-INF/Pages/Login.jsp").forward(request, response);
            } else {
                System.out.println(" u working");
                String username = request.getParameter("email");
                String password = request.getParameter("Password");
                try {
                    System.out.println("enter try");
                    UserServiceImpl.getInstance().Auth(username, password);
                    System.out.println("please");
                    HttpSession session = request.getSession();
                    System.out.println("work please");
                    session.setAttribute("user",user);
                    response.sendRedirect("/Main");

                } catch (AuthException ex) {
                    request.setAttribute("errorMessage", ex.getMessage());
                    request.getRequestDispatcher("/WEB-INF/Pages/Error.jsp").forward(request, response);
                }
                
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
