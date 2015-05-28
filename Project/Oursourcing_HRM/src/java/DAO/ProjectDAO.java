/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Common.Ultilities;
import DTO.AccountDTO;
import DTO.ProjectDTO;
import DTO.SkillDTO;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
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
                while (rs.next()) {
                    String proCode = rs.getString("projectCode");
                    String proName = rs.getString("projectName");
                    String manaName = rs.getString("managerName");
                    String startDate = rs.getString("startDate");
                    String endDate = rs.getString("endDate");
                    int size = Integer.parseInt(rs.getString("size"));
                    String language = rs.getString("language");
                    String customer = rs.getString("customer");
//                    ProjectDTO dto = new ProjectDTO(proCode, proName, manaName, startDate, endDate, size, language, customer);
//                    listPro.add(dto);
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

    public ArrayList<ProjectDTO> projectByCurrentUser(int employeeID) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "select * from Project \n"
                    + "where projectID in (select distinct projectID "
                    + "from ProjectMember pm where pm.employeeID = "
                    + employeeID + ")";
            /*select * from Project where projectID in (select distinct projectID 
             from ProjectMember pm where pm.employeeID = 1)*/
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
                    project.setStartDate(rs.getDate("startDate"));
                    project.setEndDate(rs.getDate("endDate"));
                    
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
