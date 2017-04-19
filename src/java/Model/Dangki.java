/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author Admin
 */
public class Dangki {
 
    
    public Dangki(){
        
    }
    public void Dangki(String taikhoan, String matkhau, String hoten, String email, String role){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          String url = "jdbc:sqlserver://mssql42848-kienptps04470.jelastic.skali.net:1433;databaseName=PS04470_ASM_DTDM";
                Connection con = DriverManager.getConnection(url, "sa", "GXKpkc24584");
               String SQL = "Insert into Khachhang (Taikhoan,Matkhau,Hoten,Email,role) values (?,?,?,?,?)";
        PreparedStatement st =con.prepareStatement(SQL);
             st.setString(1, taikhoan);
            st.setString(2, matkhau);
             st.setString(3, hoten);
                st.setString(4, email);
                 st.setString(5, role);
               
            st.execute();
            st.close();
            con.close();
 
    
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    
}
