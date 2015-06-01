/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO;

import Common.Ultilities;
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
public class ProjectSkillDAO {
    public boolean updateProjectSkill(int projectID, ArrayList<Integer> listSkillID) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "Delete from ProjectSkill where projectID = ?";
            try {
                stm = con.prepareStatement(sql);
                stm.setInt(1, projectID);
                int effectLine = stm.executeUpdate();
                if (effectLine > 0) {
                    for (Integer skillID : listSkillID) {
                        sql = "insert into ProjectSkill (projectID, skillID) values (?, ?)";
                        stm = con.prepareStatement(sql);
                        stm.setInt(1, projectID);
                        stm.setInt(2, skillID);
                        stm.executeUpdate();
                    }
                    return true;
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
        return false;
    }
}
