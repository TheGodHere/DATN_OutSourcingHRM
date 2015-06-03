/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Common.Ultilities;
import DTO.AccountDTO;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mon
 */
public class AccountDAO implements Serializable {

    public AccountDTO checkLogin(String username, String password) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "Select * From Account Where username=? And password=?";
            try {
                stm = con.prepareStatement(sql);
                stm.setString(1, username);
                stm.setString(2, password);
                rs = stm.executeQuery();
                while (rs.next()) {
                    AccountDTO dto = new AccountDTO();
                    dto.setUsername(username);
                    dto.setPassword(password);
                    dto.setAccountID(rs.getInt("accountID"));
                    dto.setFullName(rs.getString("fullName"));
                    return dto;
                }
            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (stm != null) {
                        stm.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }

    public boolean editAccount(String fullname, String username, String password, int accountId, boolean active) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        if (con != null) {
            String sql = "Update Account Set username = ?, password = ?, fullName = ?, isActive = ? Where accountID = ?";
            
            try {
                stm = con.prepareStatement(sql);
                stm.setString(1, username);
                stm.setString(2, password);
                stm.setString(3, fullname);
                stm.setBoolean(4, active);
                stm.setInt(5, accountId);
                

                int result = stm.executeUpdate();
                if (result > 0) {
                    return true;
                }
            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (stm != null) {
                        stm.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return false;
    }

    public boolean createAccount(String fullname, String username, String password, String conpassword, boolean active, int role) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        if (con != null) {
            String sql = "INSERT INTO Account (username, password, isActive, fullname, roleID) VALUES (?,?,?,?,?)";
            System.out.println("2");
            try {
                stm = con.prepareStatement(sql);
                stm.setString(1, username);
                stm.setString(2, password);
                stm.setBoolean(3, active);
                stm.setString(4, fullname);
                stm.setInt(5, role);
                System.out.println("rape");

                int result = stm.executeUpdate();
                if (result > 0) {
                    return true;
                }
            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (stm != null) {
                        stm.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return false;
    }

    public ArrayList<AccountDTO> searchAccount(String fullname) {

        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "Select * From Account Where fullName Like ?";
            try {
                stm = con.prepareStatement(sql);
                stm.setString(1, "%" + fullname + "%");
                rs = stm.executeQuery();
                ArrayList<AccountDTO> listObj = new ArrayList<AccountDTO>();
                while (rs.next()) {
                    String _fullname = rs.getString("fullName");
                    String username = rs.getString("username");
                    String _password = rs.getString("password");
                    boolean isActive = rs.getBoolean("isActive");
                    int accountId = rs.getInt("accountID");
                    AccountDTO dto = new AccountDTO(username, _password, isActive, _fullname, accountId);
                    listObj.add(dto);

                }
                return listObj;
            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (stm != null) {
                        stm.close();
                    }
                    if (con != null) {
                        con.close();

                    }
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }

    public ArrayList<AccountDTO> searchEmployee(String fullname) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "Select * From Account a, Role r Where a.fullName Like ? and r.RoleID = a.roleID";
            try {
                stm = con.prepareStatement(sql);
                stm.setString(1, "%" + fullname + "%");
                rs = stm.executeQuery();
                ArrayList<AccountDTO> listObj = new ArrayList<AccountDTO>();
                while (rs.next()) {
                    String _fullname = rs.getString("fullName");
                    System.out.println(_fullname);
                    String role = rs.getString("roleName");
                    System.out.println(role);
                    Date birthday = rs.getDate("birthday");
                    
                    String email = rs.getString("email");
                    System.out.println(email);
                    String phone = rs.getString("phone");
                    AccountDTO dto = new AccountDTO(_fullname, role, birthday, email, phone);
                    listObj.add(dto);

                }
                return listObj;

            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class
                        .getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (stm != null) {
                        stm.close();
                    }
                    if (con != null) {
                        con.close();

                    }
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDAO.class
                            .getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;

    }
    public AccountDTO viewEmployeeDetail(int accountID) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "Select * From Account a ,EngineerSkill e, Role r, Skill s Where a.accountID = ? and r.RoleID = a.roleID and e.engineerID = a.accountID and s.skillID = e.skillID ";
            try {
                stm = con.prepareStatement(sql);
                stm.setInt(1, accountID);
                rs = stm.executeQuery();
                AccountDTO dto = new AccountDTO();
                while (rs.next()) {
                    String _fullname = rs.getString("fullName");                    
                    String role = rs.getString("roleName");   
                    String skill = rs.getString("skillName");
                    Date birthday = rs.getDate("birthday");                    
                    String email = rs.getString("email");                    
                    String phone = rs.getString("phone");
                    boolean sex = rs.getBoolean("sex");
                    String address = rs.getString("address");
                    dto = new AccountDTO(_fullname, role, skill, birthday, email, phone, sex, address);                    
                    System.out.println("fullname" + _fullname);
                }
                return dto;

            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class
                        .getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (stm != null) {
                        stm.close();
                    }
                    if (con != null) {
                        con.close();

                    }
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDAO.class
                            .getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;

    }

    public AccountDTO getAccountByID(int accountID) {
        Connection con = Ultilities.makeConnection();
        PreparedStatement stm = null;
        ResultSet rs = null;

        if (con != null) {
            String sql = "select * from Account where accountID = " + accountID;
            /*select * from Account where accountID = 1*/
            try {
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();

                while (rs.next()) {
                    AccountDTO newAcc = new AccountDTO();
                    newAcc.setAccountID(rs.getInt("accountID"));
                    newAcc.setUsername(rs.getString("username"));
                    newAcc.setPassword(rs.getString("username"));
                    newAcc.setRoleID(rs.getInt("roleID"));
                    newAcc.setIsActive(rs.getBoolean("isActive"));
                    newAcc.setFullName(rs.getString("fullName"));
                    newAcc.setSex(rs.getBoolean("sex"));
                    newAcc.setBirthday(rs.getDate("birthday"));
                    newAcc.setPhone(rs.getString("phone"));
                    newAcc.setEmail(rs.getString("email"));
                    newAcc.setAvgPoint(rs.getFloat("avgPoint"));
                    newAcc.setAvgPoint(rs.getInt("numOfEva"));
                    newAcc.setCompany(rs.getString("company"));
                    newAcc.setAddress(rs.getString("address"));
                    return newAcc;

                }
            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class
                        .getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (stm != null) {
                        stm.close();
                    }
                    if (con != null) {
                        con.close();

                    }
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDAO.class
                            .getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }


    public AccountDTO viewRecruitmentDetail(int recruitID) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    

}
