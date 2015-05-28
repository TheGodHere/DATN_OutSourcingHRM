/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Common.Ultilities;
import DTO.AccountDTO;
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
public class AccountDAO implements Serializable {

    public AccountDTO checkLogin(String username, String password) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "Select * From Account Where username=? And password=?";
            try {
                stm = con.prepareStatement(sql);
                stm.setString(1, username);
                stm.setString(2, password);
                rs = stm.executeQuery();
                while (rs.next()) {
                    String _username = rs.getString("username");
                    String _password = rs.getString("password");
                    AccountDTO dto = new AccountDTO(_username, _password);
                    return dto;
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

    public AccountDTO getAccountByID(int accountID) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "select * from Account where accountID = " + accountID;
            /*select * from Account where accountID = 1*/
            try {
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();

                while (rs.next()) {
                    AccountDTO newAcc = new AccountDTO();
                    newAcc.setAccountID(rs.getInt("accountID"));
                    newAcc.setUsername(rs.getString("username"));
                    newAcc.setPassword(rs.getString("username"));
                    newAcc.setRoleID(rs.getInt("roleID"));
                    newAcc.setIsActive(rs.getBoolean("isActive"));
                    newAcc.setFullName(rs.getString("fullName"));
                    newAcc.setSex(rs.getBoolean("sex"));
                    newAcc.setBirthday(rs.getDate("birthday"));
                    newAcc.setPhone(rs.getString("phone"));
                    newAcc.setEmail(rs.getString("email"));
                    newAcc.setAvgPoint(rs.getFloat("avgPoint"));
                    newAcc.setAvgPoint(rs.getInt("numOfEva"));
                    newAcc.setCompany(rs.getString("company"));
                    newAcc.setAddress(rs.getString("address"));
                    return newAcc;
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
}
