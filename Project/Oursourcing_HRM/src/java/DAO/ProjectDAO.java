/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Common.Ultilities;
import DTO.ProjectDTO;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mon
 */
public class ProjectDAO implements Serializable {
    
    List<ProjectDTO> listPro;
    
    public List<ProjectDTO> getList() {
        return listPro;
    }
    
    public void listAllPro() {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        if (con != null) {
            String sql = "Select * From Project";
            try {
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
                listPro = new ArrayList<ProjectDTO>();
                while (rs.next()) {
                    String proCode = rs.getString("projectCode");
                    String proName = rs.getString("projectName");
                    String manaName = rs.getString("managerName");
                    String startDate = rs.getString("startDate");
                    String endDate = rs.getString("endDate");
                    int size = Integer.parseInt(rs.getString("size"));
                    String language = rs.getString("language");
                    String customer = rs.getString("customer");
                    ProjectDTO dto = new ProjectDTO(proCode, proName, manaName, startDate, endDate, size, language, customer);
                    listPro.add(dto);
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
    }
}
