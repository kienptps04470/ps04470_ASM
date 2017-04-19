/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ctrl;

import Model.CartBean;
import Model.Product;
import Model.ProductDTO;
import Model.Products;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class CtrlCartbean extends HttpServlet {

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
        try {
           String action = request.getParameter("action");
              if(action.equals("Add too carttrangsp")){
                  HttpSession session = request.getSession(true);
                  CartBean shop =(CartBean)session.getAttribute("SHOP");
                  if(shop==null){
                      shop = new CartBean();
                  }
            String code = request.getParameter("txtcode").trim();
            String name = request.getParameter("txtname");
            String price = request.getParameter("txtprice");
            String manhinh = request.getParameter("txtmanhinh");
                String ram = request.getParameter("txtram");
                String hdd = request.getParameter("txthdd");
                String cpu = request.getParameter("txtcpu");
                String khuyenmai = request.getParameter("txtkhuyenmai");
                String baohanh = request.getParameter("txtbaohanh");
                String hinh = request.getParameter("txthinh");
                int nkhuyenmai=Integer.parseInt(khuyenmai);
            float fpri = Float.parseFloat(price);
            Product ss = new Product(code, name, fpri, manhinh, ram, hdd, cpu, nkhuyenmai, baohanh, hinh);
                  ProductDTO sp = new ProductDTO(ss);
                  shop.addSanpham(sp);
               session.setAttribute("SHOP", shop);
               RequestDispatcher rd = request.getRequestDispatcher("Tatcasp.jsp");
                rd.forward(request, response);
            
              }if(action.equals("Add too cart")){
                  HttpSession session = request.getSession(true);
                  CartBean shop =(CartBean)session.getAttribute("SHOP");
                  if(shop==null){
                      shop = new CartBean();
                  }
            String code = request.getParameter("txtcode").trim();
            String name = request.getParameter("txtname");
            String price = request.getParameter("txtprice");
            String manhinh = request.getParameter("txtmanhinh");
                String ram = request.getParameter("txtram");
                String hdd = request.getParameter("txthdd");
                String cpu = request.getParameter("txtcpu");
                String khuyenmai = request.getParameter("txtkhuyenmai");
                String baohanh = request.getParameter("txtbaohanh");
                String hinh = request.getParameter("txthinh");
                int nkhuyenmai=Integer.parseInt(khuyenmai);
            float fpri = Float.parseFloat(price);
            Product ss = new Product(code, name, fpri, manhinh, ram, hdd, cpu, nkhuyenmai, baohanh, hinh);
                  ProductDTO sp = new ProductDTO(ss);
                  shop.addSanpham(sp);
               session.setAttribute("SHOP", shop);
               RequestDispatcher rd = request.getRequestDispatcher("Trangchu.jsp");
                rd.forward(request, response);
            
              }
              else if(action.equals("Mua Hàng")){
                String []code = request.getParameterValues("txtcode");
                String []tensp = request.getParameterValues("txtname");
                String []gia = request.getParameterValues("txtprice");
                String []soluong = request.getParameterValues("txtquantity");
                String tentaikhoan = request.getParameter("txttentk");
                for(int i=0;i<code.length;i++){
                  Products sp = new Products();
                  sp.Giohang(code[i], tensp[i], Float.parseFloat(gia[i]), soluong[i], tentaikhoan);
                }
                RequestDispatcher rd = request.getRequestDispatcher("Trangchu.jsp");
                rd.forward(request, response);
              }
              
              
              
              
              else if(action.equals("Viewcart")){
                      RequestDispatcher rd = request.getRequestDispatcher("Giohangjs.jsp");
                rd.forward(request, response);
              }else if(action.equals("addMore")){
                    RequestDispatcher rd = request.getRequestDispatcher("Trangchu.jsp");
                rd.forward(request, response);
              }else if(action.equals("Remove")){
                  String[] list =request.getParameterValues("rmv");
                  if(list!=null){
                      HttpSession session =request.getSession();
                      if(session!=null){
                          CartBean shop = (CartBean)session.getAttribute("SHOP");
                          if(shop!=null){
                              for(int i= 0;i<list.length;i++){
                                  shop.xoasanpham(list[i]);
                              }
                              session.setAttribute("SHOP", shop);
                          }
                      }
                  }
                  String url="Giohangjs.jsp";
               RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);   
              }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            out.close();
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
