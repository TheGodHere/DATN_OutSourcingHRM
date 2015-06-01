/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import DAO.TimesheetDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mon
 */
public class AddTimesheetServlet extends HttpServlet {

    private final String errorPage = "P_ErrorPage.html";
    private final String timesheetServlet = "TimesheetServlet";

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

           //int timesheetID = Integer.parseInt(request.getParameter("timesheetID"));

            //if (timesheetID == 0) {
            System.out.println("add here");
                int accID = Integer.parseInt(request.getParameter("txtEmpID"));
                System.out.println(accID);
                int proID = Integer.parseInt(request.getParameter("dropPro").trim());
                String date = request.getParameter("date");
                float time = Float.parseFloat(request.getParameter("txtTime"));
                String descript = request.getParameter("des");
                
                TimesheetDAO t = new TimesheetDAO();
                boolean result = t.addTimesheet(accID, proID, date, time, descript);
                String url = errorPage;
                if (result) {
                    url = timesheetServlet;
                }
                response.sendRedirect(url);
           // }
           // response.sendRedirect(updateTimesheet);
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
