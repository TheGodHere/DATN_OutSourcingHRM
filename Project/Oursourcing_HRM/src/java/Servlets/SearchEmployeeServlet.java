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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jenny
 */
public class SearchEmployeeServlet extends HttpServlet {

    private final String accountPage = "searchEmployee.jsp";

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
            String fullname = request.getParameter("txtSearch");
            if (fullname == null || fullname.isEmpty()) {
                fullname = "";
            }
            AccountDAO a = new AccountDAO();
            List<AccountDTO> result = a.searchEmployee(fullname);

//            List<AccountDTO> result = a.getListObj();
            int page = 1;
            try {
                page = Integer.parseInt(request.getParameter("page"));
            } catch (NullPointerException ne) {
                page = 1;
            } catch (NumberFormatException e) {
                page = 1;
            }
            int maxpage = page * 10 - 1;
            if (maxpage > result.size()) {
                maxpage = result.size();
            }
            result = result.subList((page - 1) * 10, maxpage);
            int c = result.size() % 10;
            if (c > 0) {
                maxpage = result.size()/10 + 1;
            } else {
                maxpage = result.size()/10;
            }
            
            String url = accountPage;
            if (result.size() > 0) {
                url = accountPage;
                // HttpSession session = request.getSession();
                request.setAttribute("result", result);
                request.setAttribute("maxpage", maxpage);
            }
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
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
