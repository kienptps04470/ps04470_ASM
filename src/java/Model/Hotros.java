/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Hotros {
    
    
    
  Date today=new Date(System.currentTimeMillis());
SimpleDateFormat timeFormat= new SimpleDateFormat("hh:mm:ss dd/MM/yyyy");
String ngaygio=timeFormat.format(today.getTime());
    public Hotros(){
        
    }
    public void Hotroemail(String emailht){
    
        try{
         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          String url = "jdbc:sqlserver://mssql42848-kienptps04470.jelastic.skali.net:1433;databaseName=PS04470_ASM_DTDM";
                Connection con = DriverManager.getConnection(url, "sa", "GXKpkc24584");
            String SQL = "Insert into nhanbantin (Email,Ngaygiogui) values (?,?)";    
           PreparedStatement st =con.prepareStatement(SQL);
             st.setString(1, emailht); 
             st.setString(2,ngaygio);
             st.execute();
            st.close();
            con.close();
                
    }catch(Exception e){
        e.printStackTrace();
    }
        
        
    }
    
      
        public void Hienthihotro(String tenSPLT){
       try{
           
       }  catch(Exception e) {
           e.printStackTrace();
       }  
      
       
        }
}

