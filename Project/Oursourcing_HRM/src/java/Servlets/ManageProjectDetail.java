/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Servlets;

import DAO.ProjectDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Le Minh Hoang
 */
public class ManageProjectDetail extends HttpServlet {

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
            int projectID;
            try {
                projectID = Integer.parseInt(request.getParameter("projectID"));
            } catch (NumberFormatException e) {
                projectID = 0;
            }
            
            String projectCode = request.getParameter("projectCode").trim();
            String projectName = request.getParameter("projectName");
            String startDate = request.getParameter("startDate").trim();
            String endDate = request.getParameter("endDate").trim();
            String[] skillStr = request.getParameterValues("skill");
            ArrayList<Integer> skillID = new ArrayList<Integer>();
            for (String string : skillStr) {
                try {
                    int temp = Integer.parseInt(string);
                    skillID.add(temp);
                } catch (NumberFormatException e) {
                    System.out.println(string);
                }
            }
            
            ProjectDAO pDao = new ProjectDAO();
            boolean result = pDao.updateCommonInfoProject(projectID, 
                    projectCode, projectName, startDate, endDate, skillID);
            
            String projectDetail = "CenterServlet?btAction=pdetail&";
            projectDetail += "projCode=" + projectCode;
            
            response.sendRedirect(projectDetail);
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
