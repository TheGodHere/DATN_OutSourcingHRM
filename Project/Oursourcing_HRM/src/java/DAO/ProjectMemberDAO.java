/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Common.CommonFunction;
import Common.Ultilities;
import DTO.AccountDTO;
import DTO.ProjectMemberDTO;
import DTO.WorkTrackingDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Le Minh Hoang
 */
public class ProjectMemberDAO {

    public ProjectMemberDTO getManagerByProjectID(int projectID) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "Select employeeID From ProjectMember Where projectID = ? "
                    + "and isManager = 'true'";
            /* Select employeeID From ProjectMember Where projectID = 1
                   and isManager = 'true' */
            try {
                stm = con.prepareStatement(sql);
                stm.setInt(1, projectID);
                rs = stm.executeQuery();
                while (rs.next()) {
                    ProjectMemberDTO manager = new ProjectMemberDTO();
                    manager.setEmployeeID(rs.getInt("employeeID"));
                    
                    AccountDAO accDao = new AccountDAO();
                    AccountDTO managerDetail = accDao.getAccountByID(manager.getEmployeeID());
                    manager.setEmployeeID(managerDetail.getAccountID());
                    manager.setEmployeeName(managerDetail.getFullName());
                    manager.setEmployeeUsername(managerDetail.getUsername());
                    return manager;
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
    
    public ArrayList<ProjectMemberDTO> getActiveMemberByProjectID(int projectID) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "select * from projectMember where projectID = ? "
                    + "and isActive = 'true'";
            /* select * from projectMember where projectID = 1 and 
                isManager = 'false' and isActive = 'true' */
            try {
                stm = con.prepareStatement(sql);
                stm.setInt(1, projectID);
                rs = stm.executeQuery();
                ArrayList<ProjectMemberDTO> result = new ArrayList<ProjectMemberDTO>();
                while (rs.next()) {
                    ProjectMemberDTO member = new ProjectMemberDTO();
                    member.setProjMemID(rs.getInt("proMemID"));
                    member.setProjID(rs.getInt("projectID"));
                    member.setEmployeeID(rs.getInt("employeeID"));
                    member.setIsManager(rs.getBoolean("isManager"));
                    member.setIsPartTime(rs.getBoolean("isPartTime"));
                    
                    AccountDAO accDao = new AccountDAO();
                    AccountDTO memberDetail = accDao.getAccountByID(member.getEmployeeID());
                    member.setEmployeeName(memberDetail.getFullName());
                    member.setEmployeeUsername(memberDetail.getUsername());
                    
                    WorkTrackingDAO workDao = new WorkTrackingDAO();
                    ArrayList<WorkTrackingDTO> work = 
                            workDao.getAllWorkTrackingByProjMemberID(member.getProjMemID());
                    Common.CommonFunction common = new CommonFunction();
                    work = common.sortCollection(work, WorkTrackingDTO.WorkTrackingPosition_ASC);
                    member.setWorkTracking(work);
                    
                    if (!(member.isIsManager() && member.getWorkTracking().size() <= 1)) {
                        result.add(member);
                    }
                }
                return result;
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
