/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DTO;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Date;

/**
 *
 * @author Jenny
 */
public class RecruitmentDTO implements Serializable, Comparator<RecruitmentDTO>{
    private int recruitID;
    private int directorID;
    private String director;
    private String recruitContent;
    private String recruitDate;
    private String repDate;
    private boolean isClose;
    private String title;
    private int reply;
    private String lastCommentDate;
    private String lastPoster;
    
    
    public RecruitmentDTO (String title, String director , int reply, String recruitDate){
        this.title = title;
        this.director = director;
        this.reply = reply;
        this.recruitDate = recruitDate;    
}

    /**
     * @return the recruitID
     */
    public int getRecruitID() {
        return recruitID;
    }

    /**
     * @param recruitID the recruitID to set
     */
    public void setRecruitID(int recruitID) {
        this.recruitID = recruitID;
    }

    /**
     * @return the directorID
     */
    public int getDirectorID() {
        return directorID;
    }

    /**
     * @param directorID the directorID to set
     */
    public void setDirectorID(int directorID) {
        this.directorID = directorID;
    }

    /**
     * @return the recruitContent
     */
    public String getRecruitContent() {
        return recruitContent;
    }

    /**
     * @param recruitContent the recruitContent to set
     */
    public void setRecruitContent(String recruitContent) {
        this.recruitContent = recruitContent;
    }

    /**
     * @return the recruitDate
     */
    public String getRecruitDate() {
        return recruitDate;
    }

    /**
     * @param recruitDate the recruitDate to set
     */
    public void setRecruitDate(String recruitDate) {
        this.recruitDate = recruitDate;
    }

    /**
     * @return the isClose
     */
    public boolean isIsClose() {
        return isClose;
    }

    /**
     * @param isClose the isClose to set
     */
    public void setIsClose(boolean isClose) {
        this.isClose = isClose;
    }

    /**
     * @return the director
     */
    public String getDirector() {
        return director;
    }

    /**
     * @param director the director to set
     */
    public void setDirector(String director) {
        this.director = director;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the reply
     */
    public int getReply() {
        return reply;
    }

    /**
     * @param reply the reply to set
     */
    public void setReply(int reply) {
        this.reply = reply;
    }

    /**
     * @return the repDate
     */
    public String getRepDate() {
        return repDate;
    }

    /**
     * @param repDate the repDate to set
     */
    public void setRepDate(String repDate) {
        this.repDate = repDate;
    }

    public String getLastCommentDate() {
        return lastCommentDate;
    }

    public void setLastCommentDate(String lastCommentDate) {
        this.lastCommentDate = lastCommentDate;
    }

    public String getLastPoster() {
        return lastPoster;
    }

    public void setLastPoster(String lastPoster) {
        this.lastPoster = lastPoster;
    }
    
    public int compare(RecruitmentDTO target1, RecruitmentDTO target2) {
        return target1.getLastCommentDate().compareTo(target2.getLastCommentDate());
    }
    
    public static Comparator<RecruitmentDTO> RecruitComparatorASC
            = new Comparator<RecruitmentDTO>() {
                public int compare(RecruitmentDTO recruit1, RecruitmentDTO recruit2) {
                    String targetCode1 = ((RecruitmentDTO) recruit1).getLastCommentDate();
                    String targetCode2 = ((RecruitmentDTO) recruit2).getLastCommentDate();
                    return targetCode1.compareTo(targetCode2);
                }
            };
    
    
}
