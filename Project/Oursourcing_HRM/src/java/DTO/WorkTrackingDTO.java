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
 * @author Le Minh Hoang
 */
public class WorkTrackingDTO implements Serializable, Comparator<WorkTrackingDTO> {

    private int workTrackingID;
    private int projMemberID;
    private int positionID;
    private String position;
    private String startDate;
    private String endDate;
    private boolean isPartTime;

    public WorkTrackingDTO() {
    }

    public WorkTrackingDTO(int workTrackingID, int projMemberID, int positionID, String position, String startDate, String endDate, boolean isPartTime) {
        this.workTrackingID = workTrackingID;
        this.projMemberID = projMemberID;
        this.positionID = positionID;
        this.position = position;
        this.startDate = startDate;
        this.endDate = endDate;
        this.isPartTime = isPartTime;
    }

    public int getWorkTrackingID() {
        return workTrackingID;
    }

    public void setWorkTrackingID(int workTrackingID) {
        this.workTrackingID = workTrackingID;
    }

    public int getProjMemberID() {
        return projMemberID;
    }

    public void setProjMemberID(int projMemberID) {
        this.projMemberID = projMemberID;
    }

    public int getPositionID() {
        return positionID;
    }

    public void setPositionID(int positionID) {
        this.positionID = positionID;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public boolean isIsPartTime() {
        return isPartTime;
    }

    public void setIsPartTime(boolean isPartTime) {
        this.isPartTime = isPartTime;
    }

    public int compare(WorkTrackingDTO work1, WorkTrackingDTO work2) {
        if (work1.getPosition().equals("Manager")) {
            return -1;
        }
        if (work2.getPosition().equals("Manager")) {
            return 1;
        }
        return work1.getPosition().compareTo(work2.getPosition());
    }

    public static Comparator<WorkTrackingDTO> WorkTrackingPosition_ASC
            = new Comparator<WorkTrackingDTO>() {
                public int compare(WorkTrackingDTO work1, WorkTrackingDTO work2) {
                    if (work1.getPosition().equals("Manager")) {
                        return -1;
                    }
                    if (work2.getPosition().equals("Manager")) {
                        return 1;
                    }
                    return work1.getPosition().compareTo(work2.getPosition());
                }
            };

}
