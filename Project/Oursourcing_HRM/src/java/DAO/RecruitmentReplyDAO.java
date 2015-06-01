/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO;

import Common.Ultilities;
import DTO.AccountDTO;
import DTO.RecruitmentDTO;
import DTO.RecruitmentReplyDTO;
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
public class RecruitmentReplyDAO {
    
    public RecruitmentReplyDTO getLastRecruitReply(int recruitID) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "select * from RecruitmentReply r where r.repDate in "
                    + "(select MAX(rr.repDate) from RecruitmentReply rr "
                    + "where rr.recruitID = ?)";
            /*select * from RecruitmentReply r where r.repDate in 
            (select MAX(rr.repDate) from RecruitmentReply rr 
            where rr.recruitID = 1)*/
            try {
                stm = con.prepareStatement(sql);
                stm.setInt(1, recruitID);
                rs = stm.executeQuery();

                while (rs.next()) {
                    RecruitmentReplyDTO reply = new RecruitmentReplyDTO(
                            rs.getInt("recruitRepID"), rs.getInt("recruitID"), 
                            rs.getInt("posterID"), rs.getString("repContent"), 
                            rs.getString("repDate"));
                    
                    AccountDAO accDao = new AccountDAO();
                    String posterName = accDao.getAccountByID(rs.getInt("posterID")).getFullName();
                    
                    reply.setPosterName(posterName);
                    
                    return reply;

                }
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
    public ArrayList<RecruitmentReplyDTO> viewRecruitmentReply(int recruitRepID){
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        
        if (con != null) {
            
            String sql = "Select rr.*, ac.username, ac.fullName, ro.roleName From RecruitmentReply rr, Account ac, Role ro "
                    + "Where rr.recruitID = ? and "                    
                    + "rr.posterID = ac.accountID and "
                    + "ac.roleID = ro.roleID";
            try {
                stm = con.prepareStatement(sql);
                stm.setInt(1, recruitRepID);
                rs = stm.executeQuery();
                ArrayList<RecruitmentReplyDTO> listObj = new ArrayList<RecruitmentReplyDTO>();
                while (rs.next()) {  
                    
                    int posterID = rs.getInt("posterID");   
                    RecruitmentReplyDTO dto = new RecruitmentReplyDTO();  
                    dto.setPoster(rs.getString("username"));                    
                    dto.setRoleName(rs.getString("roleName"));                    
                    String content = rs.getString("repContent");                    
                    dto.setPosterID(posterID);
                    dto.setReplyDate(rs.getDate("repDate").toString());
                    dto.setReplyContent(content);
                    
                    listObj.add(dto);
                }
                return listObj;

            } catch (SQLException ex) {
                Logger.getLogger(RecruitmentDTO.class
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

    public RecruitmentReplyDTO RecruitmentReplyDTO(int recruitID) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}

