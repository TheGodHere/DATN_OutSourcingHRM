/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Mon
 */
public class ProjectDTO implements Serializable {
    private int projectID;
    private int directorID;
    private String directorName;
    private int customerID;
    private String customerName;
    
    private String projectCode;
    private String projectName;
    private Date startDate;
    private Date endDate;
    private ArrayList<SkillDTO> listOfSkill;

    public ProjectDTO() {
    }

    public ProjectDTO(int projectID, String directorName, String customerName, String projectCode, String projectName, Date startDate, Date endDate, ArrayList<SkillDTO> listOfSkill) {
        this.projectID = projectID;
        this.directorName = directorName;
        this.customerName = customerName;
        this.projectCode = projectCode;
        this.projectName = projectName;
        this.startDate = startDate;
        this.endDate = endDate;
        this.listOfSkill = listOfSkill;
    }

    public int getDirectorID() {
        return directorID;
    }

    public void setDirectorID(int directorID) {
        this.directorID = directorID;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public int getProjectID() {
        return projectID;
    }

    public void setProjectID(int projectID) {
        this.projectID = projectID;
    }

    public String getDirectorName() {
        return directorName;
    }

    public void setDirectorName(String directorName) {
        this.directorName = directorName;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getProjectCode() {
        return projectCode;
    }

    public void setProjectCode(String projectCode) {
        this.projectCode = projectCode;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public ArrayList<SkillDTO> getListOfSkill() {
        return listOfSkill;
    }

    public void setListOfSkill(ArrayList<SkillDTO> listOfSkill) {
        this.listOfSkill = listOfSkill;
    }

   
}
