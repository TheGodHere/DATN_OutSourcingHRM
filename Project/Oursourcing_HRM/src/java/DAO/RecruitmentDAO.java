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
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jenny
 */
public class RecruitmentDAO {

    public ArrayList<RecruitmentDTO> searchRecruitment() {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "select * from Recruitment where isClose = 'false'";
//            String sql = "select * from RecruitmentReply r where r.repDate in (select MAX(rr.repDate) from RecruitmentReply rr)";
            try {
                stm = con.prepareStatement(sql);
//                stm.setDate(1, (java.sql.Date) recruitDate);
                rs = stm.executeQuery();
                ArrayList<RecruitmentDTO> listObj = new ArrayList<RecruitmentDTO>();
                while (rs.next()) {
                    int recruitID = rs.getInt("recruitID");
                    String topic = rs.getString("title");
                    int posterID = rs.getInt("directorID");
                    
                    AccountDAO accDao = new AccountDAO();
                    String posterName = accDao.getAccountByID(posterID).getFullName();
                    
                    int replies = rs.getInt("reply");
                    String recruitDate = rs.getDate("recruitDate").toString();
                    
                    RecruitmentReplyDAO replyDao = new RecruitmentReplyDAO();
                    RecruitmentReplyDTO reply = replyDao.getLastRecruitReply(recruitID);
                    
                    RecruitmentDTO dto = new RecruitmentDTO(topic, posterName, replies, recruitDate);
                    dto.setLastPoster(reply.getPosterName());
                    dto.setLastCommentDate(reply.getReplyDate());
                    
                    System.out.println(dto.getLastCommentDate());
                    
                    listObj.add(dto);

                }
                return listObj;
            } catch (SQLException ex) {
                Logger.getLogger(RecruitmentDAO.class.getName()).log(Level.SEVERE, null, ex);
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
                    Logger.getLogger(RecruitmentDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }


}
