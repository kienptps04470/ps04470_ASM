/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Lienhe {
    
    public Lienhe(){
        
    }
    Date today=new Date(System.currentTimeMillis());
SimpleDateFormat timeFormat= new SimpleDateFormat("hh:mm:ss dd/MM/yyyy");
String ngaygio=timeFormat.format(today.getTime());
    public void InsertLienhe(String name,String email, String message){
    
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          String url = "jdbc:sqlserver://mssql42848-kienptps04470.jelastic.skali.net:1433;databaseName=PS04470_ASM_DTDM";
                Connection con = DriverManager.getConnection(url, "sa", "GXKpkc24584");
               String SQL = "Insert into Lienhe (Name,Email,Message,Ngaygiogui) values (?,?,?,?)";
        PreparedStatement st =con.prepareStatement(SQL);
             st.setString(1, name);
            st.setString(2, email);
               st.setString(3, message);
                st.setString(4, ngaygio);
          
            st.execute();
            st.close();
            con.close();
 
    
        }catch(Exception e){
            e.printStackTrace();
        }
     }
    
    public List<Lienhemd> Hienthilienhe(String tennguoigui){
       try{
         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          String url = "jdbc:sqlserver://mssql42848-kienptps04470.jelastic.skali.net:1433;databaseName=PS04470_ASM_DTDM";
                Connection con = DriverManager.getConnection(url, "sa", "GXKpkc24584");
                  String sql="select * from Lienhe ";
                 if(tennguoigui!=null && tennguoigui.length()!=0){
                sql = sql + "where Name like '%"+tennguoigui+"%'";
                }
                      Statement stm = con.createStatement();
                      ResultSet rs = stm.executeQuery(sql);
                      List<Lienhemd> list = new ArrayList<Lienhemd>();
                      while(rs.next()){
                        int code = rs.getInt(1);
                          String name = rs.getString(2);
                          String email = rs.getString(3);
                          String message = rs.getString(4);
                          String ngaygio=rs.getString(5);
                         
                            Lienhemd sp= new Lienhemd(code, name, email, message, ngaygio);
                          list.add(sp);
                                            }
                rs.close();
                stm.close();
                con.close();
                      return list;

       } catch(Exception e){
           e.printStackTrace();
       }
       return null;
    }
}
    

