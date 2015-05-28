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
 * @author Mon
 */
public class AccountDTO implements Serializable, Comparable<AccountDTO> {
    private int accountID;
    private String username;
    private String password;
    private int roleID;
    private String role;
    private boolean isActive;
    private String fullName;
    private boolean sex;
    private Date birthday;
    private String phone;
    private String email;
    private float avgPoint;
    private int numOfEva;
    private String company;
    private String address;

    
    
    public AccountDTO() {
    }

    public AccountDTO(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    
    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public boolean isSex() {
        return sex;
    }

    public void setSex(boolean sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public float getAvgPoint() {
        return avgPoint;
    }

    public void setAvgPoint(float avgPoint) {
        this.avgPoint = avgPoint;
    }

    public int getNumOfEva() {
        return numOfEva;
    }

    public void setNumOfEva(int numOfEva) {
        this.numOfEva = numOfEva;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }


    public int compareTo(AccountDTO account) {
        String targetUsername = ((AccountDTO) account).getUsername();
        return this.username.compareTo(targetUsername);

    }

    public static Comparator<AccountDTO> UsernameComparator
            = new Comparator<AccountDTO>() {
                public int compare(AccountDTO acc1, AccountDTO acc2) {
                    String targetUsername1 = ((AccountDTO) acc1).getUsername();
                    String targetUsername2 = ((AccountDTO) acc2).getUsername();
                    return targetUsername1.compareTo(targetUsername2);
                }
            };
}
