/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DTO;

/**
 *
 * @author Ezio
 */
public class CriterionDTO {
    private int critID;
    private String title;
    private String description;
    private int maxPoint;
    private String type;
    private boolean isActive;

    public CriterionDTO() {
    }

    public CriterionDTO(int critID, String title, String description, int maxPoint, String type, boolean isActive) {
        this.critID = critID;
        this.title = title;
        this.description = description;
        this.maxPoint = maxPoint;
        this.type = type;
        this.isActive = isActive;
    }

    public int getCritID() {
        return critID;
    }

    public void setCritID(int critID) {
        this.critID = critID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getMaxPoint() {
        return maxPoint;
    }

    public void setMaxPoint(int maxPoint) {
        this.maxPoint = maxPoint;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }
    
    
    
}
