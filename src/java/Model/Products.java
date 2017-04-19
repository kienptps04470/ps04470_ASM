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
public class Products {
    
    public  Products(){
        
    }
    
    public void demo(String tenhinh,String tenid){
        try{
      Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          String url = "jdbc:sqlserver://mssql42848-kienptps04470.jelastic.skali.net:1433;databaseName=PS04470_ASM_DTDM";
                Connection con = DriverManager.getConnection(url, "sa", "GXKpkc24584");
              String SQL = "UPDATE Product SET Hinh=? where code=?";
              PreparedStatement st =con.prepareStatement(SQL);
                st.setString(1, tenhinh);
                  st.setString(2, tenid);
                st.executeUpdate();
            st.close();
            con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public  void insert(String tensp, float gia, String manhinh, String ram, String hdd, String cpu, int khuyenmai,String baohanh,String hinh,String masp){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          String url = "jdbc:sqlserver://mssql42848-kienptps04470.jelastic.skali.net:1433;databaseName=PS04470_ASM_DTDM";
                Connection con = DriverManager.getConnection(url, "sa", "GXKpkc24584");
               String SQL = "UPDATE Product SET Name=?, Price=?,ManHinh=?,Ram=?,HDD=?,CPU=?,Khuyenmai=?,Baohanh=?,Hinh=? where code=?";
        PreparedStatement st =con.prepareStatement(SQL);
             st.setString(1, tensp);
            st.setFloat(2, gia);
             st.setString(3, manhinh);
              st.setString(4, ram);
               st.setString(5, hdd);
                st.setString(6, cpu);
                 st.setInt(7, khuyenmai);
                 st.setString(8, baohanh);
                 st.setString(9, hinh);
        st.setString(10, masp);
            st.executeUpdate();
            st.close();
            con.close();
 
    
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public void newsp(String ma,String tensp, float gia, String manhinh, String ram, String hdd, String cpu, int khuyenmai,String baohanh,String hinh){
        try{
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          String url = "jdbc:sqlserver://mssql42848-kienptps04470.jelastic.skali.net:1433;databaseName=PS04470_ASM_DTDM";
                Connection con = DriverManager.getConnection(url, "sa", "GXKpkc24584");
               String SQL = "Insert into Product (Code,Name,Price,ManHinh,Ram,HDD,CPU,Khuyenmai,Baohanh,Hinh) values (?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement st =con.prepareStatement(SQL);
             st.setString(1, ma);
            st.setString(2, tensp);
               st.setFloat(3, gia);
                st.setString(4, manhinh);
              st.setString(5, ram);
               st.setString(6, hdd);
                st.setString(7, cpu);
                 st.setInt(8, khuyenmai);
                 st.setString(9, baohanh);
                 st.setString(10, hinh);
            st.execute();
            st.close();
            con.close();
 
    
        }catch(Exception e){
            e.printStackTrace();
        }
     }
     public void delete(String masp){
        try{
     Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          String url = "jdbc:sqlserver://mssql42848-kienptps04470.jelastic.skali.net:1433;databaseName=PS04470_ASM_DTDM";
                Connection con = DriverManager.getConnection(url, "sa", "GXKpkc24584");
                  String sql="Delete from Product WHERE Code=?";
                  PreparedStatement pstm = con.prepareStatement(sql);
                  pstm.setString(1, masp);
                  pstm.executeUpdate();
                  pstm.close();
                  con.close();
            
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public List<Product> HienthiSP(String tenSPLT){
       try{
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          String url = "jdbc:sqlserver://mssql42848-kienptps04470.jelastic.skali.net:1433;databaseName=PS04470_ASM_DTDM";
                Connection con = DriverManager.getConnection(url, "sa", "GXKpkc24584");
                  String sql="select * from Product ";
                 if(tenSPLT!=null && tenSPLT.length()!=0){
                sql = sql + "where Name like '%"+tenSPLT+"%'";
                }
                      Statement stm = con.createStatement();
                      ResultSet rs = stm.executeQuery(sql);
                      List<Product> list = new ArrayList<Product>();
                      while(rs.next()){
                          
                          String code = rs.getString(1);
                          String name = rs.getString(2);
                          float price = rs.getFloat(3);
                          String manhinh=rs.getString(4);
                          String ram=rs.getString(5);
                          String hdd=rs.getString(6);
                          String cpu=rs.getString(7);
                          int khuyenmai=rs.getInt(8);
                            String baohanh=rs.getString(9);
                            String hinh=rs.getString(10);
                            Product sp= new Product(code, name, price, manhinh, ram, hdd, cpu, khuyenmai, baohanh, hinh);
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
    
      public List<Product> HienthiSPadmin(String tenSPLT){
       try{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          String url = "jdbc:sqlserver://mssql42848-kienptps04470.jelastic.skali.net:1433;databaseName=PS04470_ASM_DTDM";
                Connection con = DriverManager.getConnection(url, "sa", "GXKpkc24584");
                  String sql="select * from Product ";
                 if(tenSPLT!=null && tenSPLT.length()!=0){
                sql = sql + "where Name like '%"+tenSPLT+"%'";
                }
                      Statement stm = con.createStatement();
                      ResultSet rs = stm.executeQuery(sql);
                      List<Product> list = new ArrayList<Product>();
                      while(rs.next()){
                          
                          String code = rs.getString(1);
                          String name = rs.getString(2);
                          float price = rs.getFloat(3);
                          String manhinh=rs.getString(4);
                          String ram=rs.getString(5);
                          String hdd=rs.getString(6);
                          String cpu=rs.getString(7);
                          int khuyenmai=rs.getInt(8);
                            String baohanh=rs.getString(9);
                            String hinh=rs.getString(10);
     Product sp= new Product(code, name, price, manhinh, ram, hdd, cpu, khuyenmai, baohanh, hinh);
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

 


public List<Product> HienthiSPpro(String tenSPLT){
       try{
         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          String url = "jdbc:sqlserver://mssql42848-kienptps04470.jelastic.skali.net:1433;databaseName=PS04470_ASM_DTDM";
                Connection con = DriverManager.getConnection(url, "sa", "GXKpkc24584");
                  String sql="select * from Product ";
                 if(tenSPLT!=null && tenSPLT.length()!=0){
                sql = sql + "where Name like '%"+tenSPLT+"%'";
                }
                      Statement stm = con.createStatement();
                      ResultSet rs = stm.executeQuery(sql);
                      List<Product> list = new ArrayList<Product>();
                      while(rs.next()){
                          
                          String code = rs.getString(1);
                          String name = rs.getString(2);
                          float price = rs.getFloat(3);
                          String manhinh=rs.getString(4);
                          String ram=rs.getString(5);
                          String hdd=rs.getString(6);
                          String cpu=rs.getString(7);
                          int khuyenmai=rs.getInt(8);
                            String baohanh=rs.getString(9);
                            String hinh=rs.getString(10);
                            Product sp= new Product(code, name, price, manhinh, ram, hdd, cpu, khuyenmai, baohanh, hinh);
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
  
public List<Product> HienthispKhuyenmai(){
       try{
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          String url = "jdbc:sqlserver://mssql42848-kienptps04470.jelastic.skali.net:1433;databaseName=PS04470_ASM_DTDM";
                Connection con = DriverManager.getConnection(url, "sa", "GXKpkc24584");
                  String sql="select * from Product where khuyenmai > 0";
                
                      Statement stm = con.createStatement();
                      ResultSet rs = stm.executeQuery(sql);
                      List<Product> list = new ArrayList<Product>();
                      while(rs.next()){
                          
                          String code = rs.getString(1);
                          String name = rs.getString(2);
                          float price = rs.getFloat(3);
                          String manhinh=rs.getString(4);
                          String ram=rs.getString(5);
                          String hdd=rs.getString(6);
                          String cpu=rs.getString(7);
                          int khuyenmai=rs.getInt(8);
                            String baohanh=rs.getString(9);
                            String hinh=rs.getString(10);
                            Product sp= new Product(code, name, price, manhinh, ram, hdd, cpu, khuyenmai, baohanh, hinh);
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
Date today=new Date(System.currentTimeMillis());
SimpleDateFormat timeFormat= new SimpleDateFormat("hh:mm:ss dd/MM/yyyy");
String ngaygio=timeFormat.format(today.getTime());
public void Giohang(String code,String tensp, float gia, String soluong, String tentk){
    
        try{
          Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          String url = "jdbc:sqlserver://mssql42848-kienptps04470.jelastic.skali.net:1433;databaseName=PS04470_ASM_DTDM";
                Connection con = DriverManager.getConnection(url, "sa", "GXKpkc24584");
               String SQL = "Insert into Giohang (code,Tensp,Gia,Soluong,Tentk,Ngaygui) values (?,?,?,?,?,?)";
        PreparedStatement st =con.prepareStatement(SQL);
             st.setString(1, code);
            st.setString(2, tensp);
               st.setFloat(3, gia);
                st.setString(4, soluong);
              st.setString(5, tentk);
                st.setString(6, ngaygio);
          
            st.execute();
            st.close();
            con.close();
 
    
        }catch(Exception e){
            e.printStackTrace();
        }
     }

public List<Giohang> Hienthigiohang(String tennguoimua){
       try{
      Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          String url = "jdbc:sqlserver://mssql42848-kienptps04470.jelastic.skali.net:1433;databaseName=PS04470_ASM_DTDM";
                Connection con = DriverManager.getConnection(url, "sa", "GXKpkc24584");
                  String sql="select * from Giohang ";
                 if(tennguoimua!=null && tennguoimua.length()!=0){
                sql = sql + "where Tentk like '%"+tennguoimua+"%'";
                }
                      Statement stm = con.createStatement();
                      ResultSet rs = stm.executeQuery(sql);
                      List<Giohang> list = new ArrayList<Giohang>();
                      while(rs.next()){
                        
                          String code = rs.getString(2);
                          String name = rs.getString(3);
                          float price = rs.getFloat(4);
                          String soluong=rs.getString(5);
                          String tenkh=rs.getString(6);
                          String ngaygio=rs.getString(7);
                         
                            Giohang sp= new Giohang(code, name, price, soluong, tenkh,ngaygio);
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
    
   

