/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mon
 */
public class CenterServlet extends HttpServlet {

    private final String nullServlet = "NullServlet";
    private final String loginServlet = "LoginServlet";
    private final String logoutServlet = "LogoutServlet";
    private final String addtimesheetServlet = "AddTimesheetServlet";
    private final String timesheetServlet = "TimesheetServlet";
    private final String searchAccountServlet = "SearchAccountServlet";
    private final String updateAccountServlet = "UpdateAccountServlet";
    private final String getRoleServlet = "GetRoleServlet";
    private final String createAccountServlet = "CreateAccountServlet";
    private final String deleteTimesheet = "DeleteTimesheet";
    private final String searchEmployeeServlet = "SearchEmployeeServlet";
    private final String viewEmployeeDetailServlet = "ViewEmployeeDetailServlet";
    private final String searchRecruitmentServlet = "SearchRecruitmentServlet";
    private final String manageProjectDetail = "ManageProjectDetail";
    private final String projectDetail = "ProjectDetailServlet";
    private final String updateTimesheet = "UpdateTimesheet";
    private final String viewRecruitmentDetailServlet = "ViewRecruitmentDetailServlet";
    private final String searchTimesheetByPro = "SearchTimesheetByProject";
    private final String createRecruitmentServlet = "CreateRecruitmentServlet";
    
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
            String button = request.getParameter("btAction");
//            if (button==null){
//                RequestDispatcher rd = request.getRequestDispatcher(nullServlet);
//                rd.forward(request, response);
//            }else 

            if (button.equals("Login")) {
                RequestDispatcher rd = request.getRequestDispatcher(loginServlet);
                rd.forward(request, response);
            } else if (button.equals("Log out")) {
                RequestDispatcher rd = request.getRequestDispatcher(logoutServlet);
                rd.forward(request, response);
            } else if (button.equals("AddTimesheet")) {
                RequestDispatcher rd = request.getRequestDispatcher(addtimesheetServlet);
                rd.forward(request, response);
            } else if (button.equals("Timesheet")) {
                RequestDispatcher rd = request.getRequestDispatcher(timesheetServlet);
                rd.forward(request, response);
            } else if (button.equals("SearchAccount")) {
                RequestDispatcher rd = request.getRequestDispatcher(searchAccountServlet);
                rd.forward(request, response);
            } else if (button.equals("UpdateAccount")) {
                RequestDispatcher rd = request.getRequestDispatcher(updateAccountServlet);
                rd.forward(request, response);
            } else if (button.equals("CreateAccount")) {
                RequestDispatcher rd = request.getRequestDispatcher(getRoleServlet);
                rd.forward(request, response);
            } else if (button.equals("CreateAccount1")) {
                RequestDispatcher rd = request.getRequestDispatcher(createAccountServlet);
                rd.forward(request, response);                
            } else if (button.equals("DeleteTimesheet")) {
                RequestDispatcher rd = request.getRequestDispatcher(deleteTimesheet);
                rd.forward(request, response);
            }  else if (button.equals("SearchEmployee")) {
                RequestDispatcher rd = request.getRequestDispatcher(searchEmployeeServlet);
                rd.forward(request, response);                
            }  else if (button.equals("ViewEmployeeDetail")) {
                RequestDispatcher rd = request.getRequestDispatcher(viewEmployeeDetailServlet);
                rd.forward(request, response);                
            }  else if (button.equals("SearchRecruitment")) {
                RequestDispatcher rd = request.getRequestDispatcher(searchRecruitmentServlet);
                rd.forward(request, response);                
            } else if (button.equals("SaveProjectDetail")) {
                RequestDispatcher rd = request.getRequestDispatcher(manageProjectDetail);
                rd.forward(request, response);                
            } else if (button.equals("pdetail")) {
                RequestDispatcher rd = request.getRequestDispatcher(projectDetail);
                rd.forward(request, response);                
            } else if (button.equals("UpdateTimesheet")) {
                RequestDispatcher rd = request.getRequestDispatcher(updateTimesheet);
                rd.forward(request, response);                
            } else if (button.equals("ViewRecruitmentDetail")) {
                RequestDispatcher rd = request.getRequestDispatcher(viewRecruitmentDetailServlet);
                rd.forward(request, response);                
            } else if (button.equals("SearchReviewTimesheet")) {
                RequestDispatcher rd = request.getRequestDispatcher(searchTimesheetByPro);
                rd.forward(request, response);                
            } else if (button.equals("Create new recruitment")) {
                RequestDispatcher rd = request.getRequestDispatcher("createRecruitment.jsp");
                rd.forward(request, response);                
            } else if (button.equals("Post Recruitment")) {
                RequestDispatcher rd = request.getRequestDispatcher(createRecruitmentServlet);
                rd.forward(request, response);                
            }
            

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
