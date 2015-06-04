/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import DAO.CriterionDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ezio
 */
public class AddCriterion extends HttpServlet {

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
            String title = request.getParameter("txtTitle");
            String description = request.getParameter("txtDescription");

            int maxPoint = 0;
            try {
                maxPoint = Integer.parseInt(request.getParameter("txtMaxPoint"));
            } catch (NullPointerException ne) {
                maxPoint = 0;
            } catch (NumberFormatException e) {
                maxPoint = 0;
            }

            int type = 0;
            try {
                type = Integer.parseInt(request.getParameter("txtType"));
            } catch (NullPointerException ne) {
                type = 0;
            } catch (NumberFormatException e) {
                type = 0;
            }

            CriterionDAO criterionDao = new CriterionDAO();
            boolean result = criterionDao.addCriterion(title, description, maxPoint, type);

            if (result == true) {
                System.out.println(criterionDao.getCriterionMaxID());
                out.print(criterionDao.getCriterionMaxID());
            } else {
                System.out.println(0);
                out.print(0);
            }
            
//            request.setAttribute("type", type);
//            RequestDispatcher rd = request.getRequestDispatcher("ListCriterion");
//            rd.forward(request, response);
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
