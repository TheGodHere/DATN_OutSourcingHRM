/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;

/**
 *
 * @author Le Minh Hoang
 */
public class ProjectMemberDTO implements Serializable, Comparator<ProjectMemberDTO> {

    private int projMemID;
    private int projID;
    private int employeeID;
    private String employeeName;
    private String employeeUsername;
    private boolean isPartTime;
    private boolean isApprove;
    private double avgPoint;
    private boolean isManager;
    private boolean isActive;
    private ArrayList<WorkTrackingDTO> workTracking;

    public ProjectMemberDTO() {
    }

    public int getProjMemID() {
        return projMemID;
    }

    public void setProjMemID(int projMemID) {
        this.projMemID = projMemID;
    }

    public int getProjID() {
        return projID;
    }

    public void setProjID(int projID) {
        this.projID = projID;
    }

    public int getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(int employeeID) {
        this.employeeID = employeeID;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getEmployeeUsername() {
        return employeeUsername;
    }

    public void setEmployeeUsername(String employeeUsername) {
        this.employeeUsername = employeeUsername;
    }

    public boolean isIsPartTime() {
        return isPartTime;
    }

    public void setIsPartTime(boolean isPartTime) {
        this.isPartTime = isPartTime;
    }

    public boolean isIsApprove() {
        return isApprove;
    }

    public void setIsApprove(boolean isApprove) {
        this.isApprove = isApprove;
    }

    public double getAvgPoint() {
        return avgPoint;
    }

    public void setAvgPoint(double avgPoint) {
        this.avgPoint = avgPoint;
    }

    public boolean isIsManager() {
        return isManager;
    }

    public void setIsManager(boolean isManager) {
        this.isManager = isManager;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public ArrayList<WorkTrackingDTO> getWorkTracking() {
        return workTracking;
    }

    public void setWorkTracking(ArrayList<WorkTrackingDTO> workTracking) {
        this.workTracking = workTracking;
    }

    public int compare(ProjectMemberDTO member1, ProjectMemberDTO member2) {
        for (WorkTrackingDTO work : member1.workTracking) {
            if (work.getPosition().equals("Manager")) {
                return -1;
            }
        }
        for (WorkTrackingDTO work : member2.workTracking) {
            if (work.getPosition().equals("Manager")) {
                return 1;
            }
        }
        return member1.getEmployeeUsername().compareTo(member2.getEmployeeUsername());
    }

    public static Comparator<ProjectMemberDTO> ProjMemberPositionAndID_ASC
            = new Comparator<ProjectMemberDTO>() {
                public int compare(ProjectMemberDTO member1, ProjectMemberDTO member2) {
                    for (WorkTrackingDTO work : member1.workTracking) {
                        if (work.getPosition().equals("Manager")) {
                            return -1;
                        }
                    }
                    for (WorkTrackingDTO work : member2.workTracking) {
                        if (work.getPosition().equals("Manager")) {
                            return 1;
                        }
                    }
                    return member1.getEmployeeUsername().compareTo(member2.getEmployeeUsername());
                }
            };

}
