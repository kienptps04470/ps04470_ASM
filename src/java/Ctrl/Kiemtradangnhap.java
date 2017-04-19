/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ctrl;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class Kiemtradangnhap extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
        try{
//            String action = request.getParameter("action");
//            if(action.equals("Dangnhap")){
//                String user = request.getParameter("txtTk");
//                  String pass = request.getParameter("txtMk");
//                 khachang kh = new khachang();
//                  boolean exits = kh.checkDN(user,pass);
//                 
//                  
//                  String url ="Loi.jsp";
//                  if(exits){
//                      url="Trangchu.jsp";
//                      HttpSession sesson = request.getSession(true);
//                     sesson.setAttribute("Taikhoan", user);
//                  }
//                   RequestDispatcher rd = request.getRequestDispatcher(url);
//                   rd.forward(request, response);
//                      
//                  
//                  
//            }
Statement stmt = null;	
ResultSet rs = null;
String action = request.getParameter("action");

String url="Loi.jsp";
 if(action.equals("Dangnhap")){
   String user = request.getParameter("txtTk");
    String pass = request.getParameter("txtMk");  
   
    

    
    
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String conStr = "jdbc:sqlserver://mssql42848-kienptps04470.jelastic.skali.net:1433;databaseName=PS04470_ASM_DTDM";
             Connection con = DriverManager.getConnection(conStr, "sa", "GXKpkc24584");
             stmt = con.createStatement();
            String sql ="Select * from Khachhang";
 
    rs = stmt.executeQuery(sql);
    String tk, mk, role;
//            
            while(rs.next()){
                tk=rs.getString("Taikhoan").trim();
               mk=rs.getString("Matkhau").trim();
              role =rs.getString("Role").trim();

                if(user.trim().equals(tk)&& pass.trim().equals(mk)&& role.equals("ad")){
                     url="Product.jsp";
                      HttpSession sesson = request.getSession();
                     sesson.setAttribute("Taikhoanad", user);
                   
                    RequestDispatcher rd = request.getRequestDispatcher(url);
                   rd.forward(request, response);
                }      
                if(user.trim().equals(tk)&& pass.trim().equals(mk)&& role.equals("kh")){
                  url="Giohangjs.jsp";
                  HttpSession sesson = request.getSession();
                     sesson.setAttribute("Taikhoankh", user);
                    RequestDispatcher rd = request.getRequestDispatcher(url);
                   rd.forward(request, response);
                }
                
//                else{
//                    url="Loi.jsp";
//                      RequestDispatcher rd = request.getRequestDispatcher(url);
//                   rd.forward(request, response);
//                }
            }
             RequestDispatcher rd = request.getRequestDispatcher(url);
                   rd.forward(request, response);
//                else{
////                    url="Loi.jsp";
////                      RequestDispatcher rd = request.getRequestDispatcher(url);
////                   rd.forward(request, response);
////                }
//             }   
//              rs.close();
//                st.close();
//                con.close();
//                }                
//        } 
 
 }
//           RequestDispatcher rd = request.getRequestDispatcher(url);
//                   rd.forward(request, response);
        
            
              

        }catch(Exception e){
            e.printStackTrace();
        }
        }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
