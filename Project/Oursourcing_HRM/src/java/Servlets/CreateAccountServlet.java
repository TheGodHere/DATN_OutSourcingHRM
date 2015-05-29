/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import DAO.AccountDAO;
import DTO.AccountDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jenny
 */
public class CreateAccountServlet extends HttpServlet {

    private final String accountPage = "GetRoleServlet";
    private final String errorPage = "Maiexcelsoir.html";
    

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
        PrintWriter out = response.getWriter();
        try {
            String url = errorPage;
            String fullname = request.getParameter("txtFullname");
            System.out.println("fullname" + fullname);
            String username = request.getParameter("txtUsername");
            System.out.println("username= " + username);
            String password = request.getParameter("txtPassword");
            System.out.println("pass =" + password);
            String conpassword = request.getParameter("txtConpassword");
            System.out.println("compass " + conpassword);

            if (password.equals(conpassword) ) {
               url=accountPage; 
            int role = Integer.parseInt(request.getParameter("Role"));
            System.out.println("role"+role);
            
            String isActive = request.getParameter("chkActive");
            boolean active = false;
            if (isActive != null) {
                active = true;
            }
            System.out.println("active = " + active);
            AccountDAO a = new AccountDAO();
            System.out.println("1");
            boolean result = a.createAccount(fullname, username, password, conpassword, active, role);
            System.out.println("result result" + result);
            

             }RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        } catch (Exception E) {
            E.printStackTrace();
        } finally {
            out.close();
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
