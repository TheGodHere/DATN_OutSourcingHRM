/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Common.Ultilities;
import DTO.AccountDTO;
import DTO.RoleDTO;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jenny
 */
public class RoleDAO implements Serializable {

    public ArrayList<RoleDTO> getRole() {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "SELECT * FROM Role";
            try {
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
                ArrayList<RoleDTO> listObj = new ArrayList<RoleDTO>();
                while (rs.next()) {
                    RoleDTO dto = new RoleDTO(rs.getInt("roleID"), rs.getString("roleName"));
                    listObj.add(dto);

                }
                return listObj;

            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class
                        .getName()).log(Level.SEVERE, null, ex);
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
                    Logger.getLogger(AccountDAO.class
                            .getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }

}
