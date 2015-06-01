/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Common.Ultilities;
import DTO.AccountDTO;
import DTO.TimesheetDTO;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.ArrayList;

/**
 *
 * @author Mon
 */
public class TimesheetDAO implements Serializable {

    public boolean addTimesheet(int accID, int proID, String date, float time, String descript) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;

        if (con != null) {
            String sql = "Insert Into Timesheet (writerID, projectID, writeDate, time, description) Values(?,?,?,?,?)";
            try {
                stm = con.prepareStatement(sql);
                stm.setInt(1, accID);
                stm.setInt(2, proID);
                stm.setString(3, date);
                stm.setFloat(4, time);
                stm.setString(5, descript);
//                stm.setBoolean(6, false);

                int row = stm.executeUpdate();
                if (row > 0) {
                    return true;
                }
            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
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
        return false;
    }

    public boolean deleteTimesheet(int id) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;

        if (con != null) {
            String sql = "Delete From Timesheet  Where timeSheetID = ?";
            try {
                stm = con.prepareStatement(sql);
                stm.setInt(1, id);
                int row = stm.executeUpdate();//select dung excute, delete va update dung update
                if (row > 0) {
                    return true;
                }

            } catch (SQLException ex) {
                ex.printStackTrace();
            } finally {
                try {

                    if (stm != null) {
                        stm.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }
        return false;
    }

    public ArrayList<TimesheetDTO> listAllTimesheet() {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;
        if (con != null) {
            String sql = "Select t.*,"
                    + " p.projectCode From Timesheet t, Project p Where (isApprove != 'true' or isApprove is null) "
                    + "and t.projectID = p.projectID";
            /*Select t.*, p.projectName From Timesheet t, Project p Where (isApprove != 'true' or isApprove is null) and t.projectID = p.projectID*/
            try {
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
                ArrayList<TimesheetDTO> listObj = new ArrayList<TimesheetDTO>();
                while (rs.next()) {

                    TimesheetDTO t = new TimesheetDTO(rs.getInt("timeSheetID"), rs.getInt("projectID"),
                            
                            rs.getInt("writerID"), rs.getInt("reviewerID"), rs.getDate("writeDate").toString(),
                            rs.getFloat("time"), rs.getString("description"), rs.getString("reviewDate"),
                            rs.getBoolean("isApprove"),rs.getString("projectCode"));
                    
                    System.out.println("acctive " + rs.getString("projectCode"));
                    listObj.add(t);
                }
                return listObj;
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
