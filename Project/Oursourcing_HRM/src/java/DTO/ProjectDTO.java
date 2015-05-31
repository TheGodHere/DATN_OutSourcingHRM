/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;

/**
 *
 * @author Mon
 */
public class ProjectDTO implements Serializable, Comparable<ProjectDTO> {

    private int projectID;
    private int directorID;
    private String directorName;
    private int customerID;
    private String customerName;
    private int managerID;
    private String managerName;
    private String projectCode;
    private String projectName;
    private String startDate;
    private String endDate;
    private ArrayList<SkillDTO> listOfSkill;

    public ProjectDTO() {
    }

    public ProjectDTO(int projectID, String directorName, String customerName, String projectCode, String projectName, String startDate, String endDate, ArrayList<SkillDTO> listOfSkill) {
        this.projectID = projectID;
        this.directorName = directorName;
        this.customerName = customerName;
        this.projectCode = projectCode;
        this.projectName = projectName;
        this.startDate = startDate;
        this.endDate = endDate;
        this.listOfSkill = listOfSkill;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
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

    public ArrayList<SkillDTO> getListOfSkill() {
        return listOfSkill;
    }

    public void setListOfSkill(ArrayList<SkillDTO> listOfSkill) {
        this.listOfSkill = listOfSkill;
    }

    public int getManagerID() {
        return managerID;
    }

    public void setManagerID(int managerID) {
        this.managerID = managerID;
    }

    public int compareTo(ProjectDTO proj) {
        String targetEndDate = ((ProjectDTO) proj).getEndDate();
        if (this.endDate == null) {
            return 1;
        } else if (targetEndDate == null) {
            return -1;
        }
        return this.endDate.compareTo(targetEndDate);
    }

    public static Comparator<ProjectDTO> EndDateComparatorDESC
            = new Comparator<ProjectDTO>() {
                public int compare(ProjectDTO proj1, ProjectDTO proj2) {
                    String targetEndDate1 = ((ProjectDTO) proj1).getEndDate();
                    String targetEndDate2 = ((ProjectDTO) proj2).getEndDate();
                    if (targetEndDate1 == null) {
                        return -1;
                    } else if (targetEndDate2 == null) {
                        return 1;
                    }
                    return -targetEndDate1.compareTo(targetEndDate2);
                }
            };
    
    public static Comparator<ProjectDTO> ProjnameComparatorASC
            = new Comparator<ProjectDTO>() {
                public int compare(ProjectDTO proj1, ProjectDTO proj2) {
                    String targetName1 = ((ProjectDTO) proj1).getProjectName();
                    String targetName2 = ((ProjectDTO) proj2).getProjectName();
                    return targetName1.compareTo(targetName2);
                }
            };
    public static Comparator<ProjectDTO> ProjnameComparatorDESC
            = new Comparator<ProjectDTO>() {
                public int compare(ProjectDTO proj1, ProjectDTO proj2) {
                    String targetName1 = ((ProjectDTO) proj1).getProjectName();
                    String targetName2 = ((ProjectDTO) proj2).getProjectName();
                    return -targetName1.compareTo(targetName2);
                }
            };
    public static Comparator<ProjectDTO> ProjcodeComparatorASC
            = new Comparator<ProjectDTO>() {
                public int compare(ProjectDTO proj1, ProjectDTO proj2) {
                    String targetCode1 = ((ProjectDTO) proj1).getProjectCode();
                    String targetCode2 = ((ProjectDTO) proj2).getProjectCode();
                    return targetCode1.compareTo(targetCode2);
                }
            };
    public static Comparator<ProjectDTO> ProjcodeComparatorDESC
            = new Comparator<ProjectDTO>() {
                public int compare(ProjectDTO proj1, ProjectDTO proj2) {
                    String targetCode1 = ((ProjectDTO) proj1).getProjectCode();
                    String targetCode2 = ((ProjectDTO) proj2).getProjectCode();
                    return -targetCode1.compareTo(targetCode2);
                }
            };
}
