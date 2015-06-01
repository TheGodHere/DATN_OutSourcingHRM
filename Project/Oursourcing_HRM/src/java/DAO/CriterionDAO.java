/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO;

import Common.Ultilities;
import DTO.CriterionDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ezio
 */
public class CriterionDAO {
    public ArrayList<CriterionDTO> listAppraisal() {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "Select * From Criterion Where type=? AND isActive=?";
            try {                
                stm = con.prepareStatement(sql);
                stm.setString(1, "appraisal");
                stm.setBoolean(2, true);
                rs = stm.executeQuery();
                
                ArrayList<CriterionDTO> listCrit = new ArrayList<CriterionDTO>();
                
                CriterionDTO critetion;
                while (rs.next()) {
                    critetion = new CriterionDTO();
                    critetion.setCritID(rs.getInt("critID"));
                    critetion.setTitle(rs.getString("title"));
                    critetion.setDescription(rs.getString("description"));
                    critetion.setMaxPoint(rs.getInt("maxPoint"));
                    critetion.setType(rs.getString("type"));
                    critetion.setIsActive(rs.getBoolean("isActive"));
                    
                    listCrit.add(critetion);
                }
                return listCrit;
            } catch (SQLException ex) {
                Logger.getLogger(CriterionDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (stm != null) {
                        stm.close();
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(CriterionDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }
    
    public ArrayList<CriterionDTO> listFeedback() {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "Select * From Criterion Where type=?";
            try {                
                stm = con.prepareStatement(sql);
                stm.setString(1, "feedback");                
                rs = stm.executeQuery();
                
                ArrayList<CriterionDTO> listCrit = new ArrayList<CriterionDTO>();
                
                CriterionDTO critetion;
                while (rs.next()) {
                    critetion = new CriterionDTO();
                    critetion.setCritID(rs.getInt("critID"));
                    critetion.setTitle(rs.getString("title"));
                    critetion.setDescription(rs.getString("description"));
                    critetion.setMaxPoint(rs.getInt("maxPoint"));
                    critetion.setType(rs.getString("type"));
                    critetion.setIsActive(rs.getBoolean("isActive"));
                    
                    listCrit.add(critetion);
                }
                return listCrit;
            } catch (SQLException ex) {
                Logger.getLogger(CriterionDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (stm != null) {
                        stm.close();
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(CriterionDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }
    
    public int getCriterionMaxID() {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "select max(critID) critID  from Criterion";
            /* select max(critID) critID  from Criterion */
            try {                
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
                
                while (rs.next()) {
                    return rs.getInt("critID");
                }
            } catch (SQLException ex) {
                Logger.getLogger(CriterionDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (stm != null) {
                        stm.close();
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(CriterionDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }
    
    public boolean addCriterion(String title, String description, int maxPoint, String type){
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        boolean result = false;
        
        if (con != null) {
            String sql = "INSERT INTO Criterion (title,description,maxPoint,type,isActive) VALUES (?,?,?,?,?)";
            try {                
                stm = con.prepareStatement(sql);
                
                stm.setString(1, title);
                stm.setString(2, description);
                stm.setInt(3, maxPoint);
                stm.setString(4, type);
                stm.setBoolean(5, true);
                
                stm.executeUpdate();
                result = true;
                
            } catch (SQLException ex) {
                Logger.getLogger(CriterionDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (stm != null) {
                        stm.close();
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(CriterionDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return result;
    }
    
    public boolean editCriterion(int critID ,String title, String description, int maxPoint, String type){
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        boolean result = false;
        
        if (con != null) {
            String sql = "UPDATE Criterion SET title=?,description=?,maxPoint=?,type=? WHERE critID=?";
            try {                
                stm = con.prepareStatement(sql);
                
                stm.setString(1, title);
                stm.setString(2, description);
                stm.setInt(3, maxPoint);
                stm.setString(4, type);
                stm.setInt(5, critID);
                
                stm.executeUpdate();
                result = true;
                
            } catch (SQLException ex) {
                Logger.getLogger(CriterionDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (stm != null) {
                        stm.close();
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(CriterionDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return result;
    }
    
    public boolean deactiveCriterion(int critID){
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        boolean result = false;
        
        if (con != null) {
            String sql = "UPDATE Criterion SET isActive=? WHERE critID=?";
            try {                
                stm = con.prepareStatement(sql);
                
                stm.setBoolean(1, false);
                stm.setInt(2, critID);
                
                stm.executeUpdate();
                result = true;
                
            } catch (SQLException ex) {
                Logger.getLogger(CriterionDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (stm != null) {
                        stm.close();
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(CriterionDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return result;
    }
}
