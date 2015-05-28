/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO;

import Common.Ultilities;
import DTO.AccountDTO;
import DTO.SkillDTO;
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
public class SkillDAO {
    public ArrayList<SkillDTO> getSkillProject(int projectID) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "select * from Skill where skillID in "
                    + "(select skillID from ProjectSkill where projectID = ?)";
            /*select * from Skill where skillID in 
            (select skillID from ProjectSkill where projectID = 1)*/
            try {
                stm = con.prepareStatement(sql);
                stm.setInt(1, projectID);
                rs = stm.executeQuery();
                ArrayList<SkillDTO> result = new ArrayList<SkillDTO>();
                while (rs.next()) {
                    SkillDTO skill = new SkillDTO();
                    skill.setSkillName(rs.getString("skillName"));
                    result.add(skill);
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
