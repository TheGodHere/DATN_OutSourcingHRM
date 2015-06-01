/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO;

import Common.Ultilities;
import DTO.AccountDTO;
import DTO.ProjectMemberDTO;
import DTO.WorkTrackingDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Le Minh Hoang
 */
public class WorkTrackingDAO {
    public ArrayList<WorkTrackingDTO> getAllWorkTrackingByProjMemberID(int projMemberID) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "select * from WorkTracking where "
                    + "proMemID = ? and endDate is null";
            /* select * from WorkTracking where proMemID = 1 and 
                    endDate is null */
            try {
                stm = con.prepareStatement(sql);
                stm.setInt(1, projMemberID);
                rs = stm.executeQuery();
                ArrayList<WorkTrackingDTO> result = new ArrayList<WorkTrackingDTO>();
                while (rs.next()) {
                    WorkTrackingDTO work = new WorkTrackingDTO();
                    work.setWorkTrackingID(rs.getInt("workTrackingID"));
                    work.setProjMemberID(rs.getInt("proMemID"));
                    work.setPositionID(rs.getInt("positionID"));
                    SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
                    work.setStartDate(format.format(rs.getDate("startDate")));
//                    work.setIsPartTime(rs.getBoolean("isPartTime"));
                    
                    PositionDAO positionDao = new PositionDAO();
                    work.setPosition(positionDao.getPositionName(work.getPositionID()));
                    
                    result.add(work);
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
