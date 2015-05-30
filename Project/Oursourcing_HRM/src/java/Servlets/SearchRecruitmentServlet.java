/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Servlets;

import Common.CommonFunction;
import DAO.RecruitmentDAO;
import DTO.RecruitmentDTO;
import DTO.RecruitmentReplyDTO;
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
 * @author Jenny
 */
public class SearchRecruitmentServlet extends HttpServlet {
    private final String recruitPage = "searchRecruitment.jsp";

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
            RecruitmentDAO a = new RecruitmentDAO();
            ArrayList<RecruitmentDTO> result = a.searchRecruitment();
            
            int page = 1;
            try {
                page = Integer.parseInt(request.getParameter("page"));
            } catch (NullPointerException ne) {
                page = 1;
            } catch (NumberFormatException e) {
                page = 1;
            }
            
            
            CommonFunction common = new CommonFunction();
            result = common.sortCollection(result, RecruitmentDTO.RecruitComparatorASC);
            
            int maxpage = page*10-1;
            if (maxpage > result.size()) {
                maxpage = result.size();
            }
            
            List<RecruitmentDTO> resultPage = result.subList((page-1)*10, maxpage);
            
            
            String url = recruitPage;
            if(result.size()>0){               
                url = recruitPage;
                //HttpSession session = request.getSession();
                request.setAttribute("RECRUITMENT", resultPage);
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
