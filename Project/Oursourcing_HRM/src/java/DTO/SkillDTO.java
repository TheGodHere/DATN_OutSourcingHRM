/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DTO;

/**
 *
 * @author Le Minh Hoang
 */
public class SkillDTO {
    private int skillID;
    private String skillName;
    private boolean isProgCode;
    private boolean isInterest;

    public SkillDTO() {
    }

    public SkillDTO(int skillID, String skillName) {
        this.skillID = skillID;
        this.skillName = skillName;
    }

    public SkillDTO(int skillID, String skillName, boolean isProgCode) {
        this.skillID = skillID;
        this.skillName = skillName;
        this.isProgCode = isProgCode;
    }

    public int getSkillID() {
        return skillID;
    }

    public void setSkillID(int skillID) {
        this.skillID = skillID;
    }

    public String getSkillName() {
        return skillName;
    }

    public void setSkillName(String skillName) {
        this.skillName = skillName;
    }

    public boolean isIsProgCode() {
        return isProgCode;
    }

    public void setIsProgCode(boolean isProgCode) {
        this.isProgCode = isProgCode;
    }

    public boolean isIsInterest() {
        return isInterest;
    }

    public void setIsInterest(boolean isInterest) {
        this.isInterest = isInterest;
    }
    
    
}
