/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Common.CommonFunction;
import DAO.ProjectDAO;
import DTO.AccountDTO;
import DTO.ProjectDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mon
 */
public class ListAllProject extends HttpServlet {

    private final String homePage = "EmpHome.jsp";
    private final String printPage = "PrintHTMLServlet";
    private final String convertPage = "TableHTMLConvert.jsp";

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
//            HttpSession session = request.getSession(false);
            HttpSession session = request.getSession(true);
            //Day la code dung de lay role cua user dang tren session
//            AccountDTO curAcc = (AccountDTO) session.getAttribute("USERACCOUNT");
//            if (curAcc.getRole().equals("engineer")) {
            ProjectDAO p = new ProjectDAO();
                
            int year = 0;
            try {
                year = Integer.parseInt(request.getParameter("year"));
            } catch (NullPointerException ne) {
                year = 0;
            } catch (NumberFormatException e) {
                year = 0;
            }
            
            String projname = request.getParameter("projname");
            
            int page = 1;
            try {
                page = Integer.parseInt(request.getParameter("page"));
            } catch (NullPointerException ne) {
                page = 1;
            } catch (NumberFormatException e) {
                page = 1;
            }
            
            
            //Day la code chinh se su dung
//                ArrayList<ProjectDTO> result = 
//            p.projectByCurrentUser(curAcc.getAccountID(), year);
            //Day la code dung de test voi accountID = 3
            ArrayList<ProjectDTO> result = p.projectByCurrentUser(3, year, projname);
            CommonFunction common = new CommonFunction();
            result = common.sortCollection(result, ProjectDTO.EndDateComparatorDESC);
            
            int maxpage = page*10-1;
            if (maxpage > result.size()) {
                maxpage = result.size();
            }
            
            List<ProjectDTO> resultPage = result.subList((page-1)*10, maxpage);
//            ArrayList<ProjectDTO> result = p.listAllPro();
            
            request.setAttribute("LISTPRO", resultPage);
//            }

            RequestDispatcher rd = request.getRequestDispatcher("searchProject.jsp");
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
