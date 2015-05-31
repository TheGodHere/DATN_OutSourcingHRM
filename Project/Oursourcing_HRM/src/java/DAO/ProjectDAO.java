/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Common.Ultilities;
import DTO.AccountDTO;
import DTO.ProjectDTO;
import DTO.ProjectMemberDTO;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mon
 */
public class ProjectDAO implements Serializable {

    public ArrayList<ProjectDTO> listAllPro() {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "Select * From Project";
            try {
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
                ArrayList<ProjectDTO> listPro = new ArrayList<ProjectDTO>();
                ProjectDTO project;
                while (rs.next()) {
                    project = new ProjectDTO();
                    project.setProjectID(rs.getInt("projectID"));
                    project.setDirectorID(rs.getInt("directorID"));
                    project.setCustomerID(rs.getInt("customerID"));
                    project.setProjectCode(rs.getString("projectCode"));
                    project.setProjectName(rs.getString("projectName"));
                    
                    SimpleDateFormat format = new SimpleDateFormat();
                    try {
                        project.setStartDate(format.format(rs.getDate("startDate")));
                    } catch (NullPointerException e) {
                        project.setStartDate("");
                    }
                    
                    try {
                        project.setEndDate(format.format(rs.getDate("endDate")));
                    } catch (NullPointerException e) {
                        project.setEndDate("");
                    }

                    AccountDAO accDao = new AccountDAO();
                    AccountDTO director = accDao.getAccountByID(project.getDirectorID());
                    project.setDirectorName(director.getFullName());

                    AccountDTO customer = accDao.getAccountByID(project.getCustomerID());
                    project.setCustomerName(customer.getFullName());

                    SkillDAO skillDao = new SkillDAO();
                    project.setListOfSkill(skillDao.getSkillProject(project.getProjectID()));

                    listPro.add(project);
                }
                return listPro;
            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (stm != null) {
                        stm.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }

    public ProjectDTO ProjectByCode(String projCode) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "Select * From Project where projectCode = ?";
            try {
                stm = con.prepareStatement(sql);
                stm.setString(1, projCode);
                rs = stm.executeQuery();
                ProjectDTO project;
                System.out.println(sql);
                while (rs.next()) {
                    project = new ProjectDTO();
                    project.setProjectID(rs.getInt("projectID"));
                    project.setDirectorID(rs.getInt("directorID"));
                    project.setCustomerID(rs.getInt("customerID"));
                    project.setProjectCode(rs.getString("projectCode"));
                    project.setProjectName(rs.getString("projectName"));
                    
                    SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
                    try {
                        project.setStartDate(format.format(rs.getDate("startDate")));
                    } catch (NullPointerException e) {
                        project.setStartDate("");
                    }
                    
                    try {
                        project.setEndDate(format.format(rs.getDate("endDate")));
                    } catch (NullPointerException e) {
                        project.setEndDate("");
                    }
                    
                    AccountDAO accDao = new AccountDAO();
                    AccountDTO director = accDao.getAccountByID(project.getDirectorID());
                    project.setDirectorName(director.getFullName());

                    AccountDTO customer = accDao.getAccountByID(project.getCustomerID());
                    project.setCustomerName(customer.getFullName());

                    ProjectMemberDAO pMemberDao = new ProjectMemberDAO();
                    ProjectMemberDTO manager = 
                            pMemberDao.getManagerByProjectID(project.getProjectID());
                    project.setManagerID(manager.getEmployeeID());
                    project.setManagerName(manager.getEmployeeName());

                    SkillDAO skillDao = new SkillDAO();
                    project.setListOfSkill(skillDao.getSkillProject(project.getProjectID()));

                    return project;
                }
            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (stm != null) {
                        stm.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }

    public ArrayList<ProjectDTO> projectByCurrentUser(int employeeID, int year, String projname) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "select * from Project where \n"
                    + "projectID in "
                    + "(select distinct projectID from ProjectMember pm where pm.employeeID = "
                    + employeeID + ")";
            /*select * from Project where projectID in 
             (select distinct projectID from ProjectMember pm where pm.employeeID = 3)*/

            int curYear = Calendar.getInstance().get(Calendar.YEAR);
            if (year == curYear) {
                sql = "select * from Project where "
                        + "projectID in (select distinct projectID from "
                        + "ProjectMember pm where pm.employeeID = " + employeeID + ")"
                        + "and (endDate > '01/01/" + year
                        + "' or endDate is NULL)";
                /*select * from Project where projectID in 
                 (select distinct projectID from ProjectMember pm 
                 where pm.employeeID = 3)
                 and (endDate > '01/01/2015' or endDate is NULL)*/
            } else if (year != 0) {
                sql = "select * from Project where projectID in "
                        + "(select distinct projectID from ProjectMember pm "
                        + "where pm.employeeID = " + employeeID + ")"
                        + "and (endDate > '01/01/"
                        + year + "' and endDate < '01/01/"
                        + (year + 1) + "')";
                /*select * from Project where projectID in 
                 (select distinct projectID from ProjectMember pm 
                 where pm.employeeID = 3)
                 and (endDate > '01/01/2014' and endDate < '01/01/2015')*/
            }

            if (projname != null && !projname.trim().isEmpty()) {
                sql += " and projectName like '%" + projname + "%'";
            }

            System.out.println(sql);
            try {
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();

                ArrayList<ProjectDTO> listPro = new ArrayList<ProjectDTO>();
                ProjectDTO project;
                while (rs.next()) {
                    project = new ProjectDTO();
                    project.setProjectID(rs.getInt("projectID"));
                    project.setDirectorID(rs.getInt("directorID"));
                    project.setCustomerID(rs.getInt("customerID"));
                    project.setProjectCode(rs.getString("projectCode"));
                    project.setProjectName(rs.getString("projectName"));
                    
                    SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
                    try {
                        project.setStartDate(format.format(rs.getDate("startDate")));
                    } catch (NullPointerException e) {
                        project.setStartDate("");
                    }
                    
                    try {
                        project.setEndDate(format.format(rs.getDate("endDate")));
                    } catch (NullPointerException e) {
                        project.setEndDate("");
                    }
                    

                    AccountDAO accDao = new AccountDAO();
                    AccountDTO director = accDao.getAccountByID(project.getDirectorID());
                    project.setDirectorName(director.getFullName());

                    AccountDTO customer = accDao.getAccountByID(project.getCustomerID());
                    project.setCustomerName(customer.getFullName());

                    SkillDAO skillDao = new SkillDAO();
                    project.setListOfSkill(skillDao.getSkillProject(project.getProjectID()));

                    listPro.add(project);
                }
                return listPro;
            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (stm != null) {
                        stm.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }
}
