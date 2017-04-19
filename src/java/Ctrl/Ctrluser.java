/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ctrl;

import identies.Khachhang;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.DAO.AccountDao;

/**
 *
 * @author Admin
 */
public class Ctrluser extends HttpServlet {

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
             String action = request.getParameter("action");
            if(action.equals("Timkiem")){
                String Hoten = request.getParameter("txtHoten").trim();
                List <Khachhang> list = AccountDao.hienthiDS(Hoten);
                request.setAttribute("ListKH", list);
                String url="Quanliuser.jsp";
                 RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
                
            }if(action.equals("Delete")){
                String tenTK = request.getParameter("txtTaikhoan");
                AccountDao accountDao = new AccountDao();
              accountDao.delete(tenTK);
                String url="Ctrluser?txtHoten=&action=Timkiem";
                  RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);   
                
             }else if(action.equals("Edit")){
                  String taikhoan = request.getParameter("txtTaikhoan");
                String matkhau = request.getParameter("txtmatkhau");
                String hoten = request.getParameter("txthoten");
                String email = request.getParameter("txtemail");
                String role = request.getParameter("txtrole");
           Khachhang khed = new Khachhang(taikhoan, matkhau, hoten, email, role);
           request.setAttribute("acc", khed);
            RequestDispatcher rd = request.getRequestDispatcher("ChinhsuaUser.jsp");
                rd.forward(request, response);   
                }
             else if(action.equals("Update")){
                 String taikhoan = request.getParameter("txtTaikhoan");
                String matkhau = request.getParameter("txtmatkhau");
                String hoten = request.getParameter("txthoten");
                String email = request.getParameter("txtemail");
                String role = request.getParameter("txtrole");
                Khachhang khachhang = new Khachhang(taikhoan, matkhau, hoten, email, role);
                AccountDao accountDao = new AccountDao();
              accountDao.update(khachhang, taikhoan);
                 String url="Ctrluser?txtHoten=&action=Timkiem";
               RequestDispatcher rd = request.getRequestDispatcher(url);
               rd.forward(request, response); 
             }  else if(action.equals("ThemTaikhoan")){
                RequestDispatcher rd = request.getRequestDispatcher("Themuser.jsp");
                rd.forward(request, response); 
                 
                 
             }else if(action.equals("Thêm")){
               
                 String taikhoan = request.getParameter("txtTaikhoan");
                String matkhau = request.getParameter("txtmatkhau");
                String hoten = request.getParameter("txthoten");
                String email = request.getParameter("txtemail");
                String role = request.getParameter("txtrole"); 
                 Khachhang khachhang = new Khachhang(taikhoan, matkhau, hoten, email, role);
                AccountDao accountDao = new AccountDao();
              accountDao.Save(khachhang);
               String url="Ctrluser?txtHoten=&action=Timkiem";
                  RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response); 
             }

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
