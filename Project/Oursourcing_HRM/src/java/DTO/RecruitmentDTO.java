/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.io.Serializable;
import java.util.Comparator;

/**
 *
 * @author Jenny
 */
public class RecruitmentDTO implements Serializable, Comparator<RecruitmentDTO> {

    private int recruitID;
    private int directorID;
    private String director;
    private int roleID;
    private String roleName;
    private String recruitContent;
    private String recruitDate;
    private String repDate;
    private boolean isClose;
    private String title;
    private int reply;
    private String lastCommentDate;
    private String lastPoster;
    private String lastEditDate;
    private String Editor;
    private String lastEdit;

    public RecruitmentDTO(String title, String director, int reply, String recruitDate) {
        this.title = title;
        this.director = director;
        this.reply = reply;
        this.recruitDate = recruitDate;
    }

    public RecruitmentDTO(String title, String director, String recruitContent, String recruitDate, String roleName) {
        this.title = title;
        this.director = director;
        this.recruitContent = recruitContent;
        this.recruitDate = recruitDate;
        this.roleName = roleName;
    }

    public RecruitmentDTO() {
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

    /**
     * @return the lastEditDate
     */
    public String getLastEditDate() {
        return lastEditDate;
    }

    /**
     * @param lastEditDate the lastEditDate to set
     */
    public void setLastEditDate(String lastEditDate) {
        this.lastEditDate = lastEditDate;
    }

    /**
     * @return the Editor
     */
    public String getEditor() {
        return Editor;
    }

    /**
     * @param Editor the Editor to set
     */
    public void setEditor(String Editor) {
        this.Editor = Editor;
    }

   

    

    /**
     * @return the roleID
     */
    public int getRoleID() {
        return roleID;
    }

    /**
     * @param roleID the roleID to set
     */
    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    /**
     * @return the roleName
     */
    public String getRoleName() {
        return roleName;
    }

    /**
     * @param roleName the roleName to set
     */
    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    /**
     * @return the lastEdit
     */
    public String getLastEdit() {
        return lastEdit;
    }

    /**
     * @param lastEdit the lastEdit to set
     */
    public void setLastEdit(String lastEdit) {
        this.lastEdit = lastEdit;
    }
}
    

    /**
     * @return the posterID
     */
   