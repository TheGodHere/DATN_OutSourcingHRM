/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Common;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author Le Minh Hoang
 */
public class Ultilities implements Serializable{
    public static Connection makeConnection() {
        try {
            Context context = new InitialContext();
            Context tomcatContext = (Context) context.lookup("java:comp/env");
            DataSource ds = (DataSource)tomcatContext.lookup("Oursourcing_HRM");
            Connection con = ds.getConnection();
            return con;
        } catch (NamingException e) {
            e.printStackTrace();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    
}
