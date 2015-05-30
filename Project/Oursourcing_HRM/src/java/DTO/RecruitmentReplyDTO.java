/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DTO;

/**
 *
 * @author Jenny
 */
public class RecruitmentReplyDTO {
    private int replyID;
    private int recruitID;
    private int posterID;
    private String posterName;
    private String replyContent;
    private String replyDate;

    public RecruitmentReplyDTO() {
    }

    public RecruitmentReplyDTO(int replyID, int recruitID, int posterID, String replyContent, String replyDate) {
        this.replyID = replyID;
        this.recruitID = recruitID;
        this.posterID = posterID;
        this.replyContent = replyContent;
        this.replyDate = replyDate;
    }

    public int getReplyID() {
        return replyID;
    }

    public void setReplyID(int replyID) {
        this.replyID = replyID;
    }

    public int getRecruitID() {
        return recruitID;
    }

    public void setRecruitID(int recruitID) {
        this.recruitID = recruitID;
    }

    public int getPosterID() {
        return posterID;
    }

    public void setPosterID(int posterID) {
        this.posterID = posterID;
    }

    public String getReplyContent() {
        return replyContent;
    }

    public void setReplyContent(String replyContent) {
        this.replyContent = replyContent;
    }

    public String getReplyDate() {
        return replyDate;
    }

    public void setReplyDate(String replyDate) {
        this.replyDate = replyDate;
    }

    public String getPosterName() {
        return posterName;
    }

    public void setPosterName(String posterName) {
        this.posterName = posterName;
    }
    
    
}
