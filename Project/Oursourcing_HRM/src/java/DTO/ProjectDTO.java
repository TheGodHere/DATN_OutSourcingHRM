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
public class ProjectDTO implements Serializable {

    private String proCode;
    private String proName;
    private String manaName;
    private String startDate;
    private String endDate;
    private int size;
    private String language;
    private String customer;

    public ProjectDTO() {
    }

    public ProjectDTO(String proCode, String proName, String manaName, String startDate, String endDate, int size, String language, String customer) {
        this.proCode = proCode;
        this.proName = proName;
        this.manaName = manaName;
        this.startDate = startDate;
        this.endDate = endDate;
        this.size = size;
        this.language = language;
        this.customer = customer;
    }

    /**
     * @return the proCode
     */
    public String getProCode() {
        return proCode;
    }

    /**
     * @param proCode the proCode to set
     */
    public void setProCode(String proCode) {
        this.proCode = proCode;
    }

    /**
     * @return the proName
     */
    public String getProName() {
        return proName;
    }

    /**
     * @param proName the proName to set
     */
    public void setProName(String proName) {
        this.proName = proName;
    }

    /**
     * @return the manaName
     */
    public String getManaName() {
        return manaName;
    }

    /**
     * @param manaName the manaName to set
     */
    public void setManaName(String manaName) {
        this.manaName = manaName;
    }

    /**
     * @return the startDate
     */
    public String getStartDate() {
        return startDate;
    }

    /**
     * @param startDate the startDate to set
     */
    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    /**
     * @return the endDate
     */
    public String getEndDate() {
        return endDate;
    }

    /**
     * @param endDate the endDate to set
     */
    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    /**
     * @return the size
     */
    public int getSize() {
        return size;
    }

    /**
     * @param size the size to set
     */
    public void setSize(int size) {
        this.size = size;
    }

    /**
     * @return the language
     */
    public String getLanguage() {
        return language;
    }

    /**
     * @param language the language to set
     */
    public void setLanguage(String language) {
        this.language = language;
    }

    /**
     * @return the customer
     */
    public String getCustomer() {
        return customer;
    }

    /**
     * @param customer the customer to set
     */
    public void setCustomer(String customer) {
        this.customer = customer;
    }
    
    
    
    
}
