/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DTO;

import java.io.Serializable;

/**
 *
 * @author Mon
 */
public class TimesheetDTO implements Serializable{
    private int timeSheetID;
    private int projectID;
    private int writerID;
    private int reviewerID;
    private String writeDate;
    private float time;
    private String description;
    private String reviewDate;
    private boolean isApprove;
    private String projectCode;
    private String fullName;

    public TimesheetDTO() {
    }

    public TimesheetDTO(int timeSheetID, int projectID, int writerID, int reviewerID, String writeDate, float time, String description, String reviewDate, boolean isApprove, String projectCode, String fullName) {
        this.timeSheetID = timeSheetID;
        this.projectID = projectID;
        this.writerID = writerID;
        this.reviewerID = reviewerID;
        this.writeDate = writeDate;
        this.time = time;
        this.description = description;
        this.reviewDate = reviewDate;
        this.isApprove = isApprove;
        this.projectCode = projectCode;
        this.fullName = fullName;
    }

   

  
    

    

   

   

    /**
     * @return the timeSheetID
     */
    public int getTimeSheetID() {
        return timeSheetID;
    }

    /**
     * @param timeSheetID the timeSheetID to set
     */
    public void setTimeSheetID(int timeSheetID) {
        this.timeSheetID = timeSheetID;
    }

    /**
     * @return the projectID
     */
    public int getProjectID() {
        return projectID;
    }

    /**
     * @param projectID the projectID to set
     */
    public void setProjectID(int projectID) {
        this.projectID = projectID;
    }

    /**
     * @return the writerID
     */
    public int getWriterID() {
        return writerID;
    }

    /**
     * @param writerID the writerID to set
     */
    public void setWriterID(int writerID) {
        this.writerID = writerID;
    }

    /**
     * @return the reviewerID
     */
    public int getReviewerID() {
        return reviewerID;
    }

    /**
     * @param reviewerID the reviewerID to set
     */
    public void setReviewerID(int reviewerID) {
        this.reviewerID = reviewerID;
    }

    /**
     * @return the writeDate
     */
    public String getWriteDate() {
        return writeDate;
    }

    /**
     * @param writeDate the writeDate to set
     */
    public void setWriteDate(String writeDate) {
        this.writeDate = writeDate;
    }

    /**
     * @return the time
     */
    public float getTime() {
        return time;
    }

    /**
     * @param time the time to set
     */
    public void setTime(float time) {
        this.time = time;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the reviewDate
     */
    public String getReviewDate() {
        return reviewDate;
    }

    /**
     * @param reviewDate the reviewDate to set
     */
    public void setReviewDate(String reviewDate) {
        this.reviewDate = reviewDate;
    }

    /**
     * @return the isApprove
     */
    public boolean isIsApprove() {
        return isApprove;
    }

    /**
     * @param isApprove the isApprove to set
     */
    public void setIsApprove(boolean isApprove) {
        this.isApprove = isApprove;
    }

    /**
     * @return the projectName
     */
    public String getProjectName() {
        return getProjectCode();
    }

    /**
     * @param projectName the projectName to set
     */
    public void setProjectName(String projectName) {
        this.setProjectCode(projectName);
    }

    /**
     * @return the projectCode
     */
    public String getProjectCode() {
        return projectCode;
    }

    /**
     * @param projectCode the projectCode to set
     */
    public void setProjectCode(String projectCode) {
        this.projectCode = projectCode;
    }

    /**
     * @return the fullName
     */
    public String getFullName() {
        return fullName;
    }

    /**
     * @param fullName the fullName to set
     */
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    
    
}