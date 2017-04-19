/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ctrl;

import Model.Product;
import Model.Products;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Admin
 */
public class CtrlProducts extends HttpServlet {

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
        try  {
            String action = request.getParameter("action");
            
            if(action.equals("Tìm Kiếm")){
                String name = request.getParameter("txtTenSP");
                Products sp = new Products();
                List<Product> list = new ArrayList<Product>();
                list=sp.HienthiSPadmin(name);          
                request.setAttribute("listSP", list);
                RequestDispatcher rd = request.getRequestDispatcher("Product.jsp");
                rd.forward(request, response);
            }
            else if(action.equals("Delete")){
                String code = request.getParameter("txtcode");
                Products sp = new Products();
                sp.delete(code);
                String url="Product.jsp";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if(action.equals("Edit")){
                String code = request.getParameter("txtcode").trim();
                String name = request.getParameter("txtname");
                String pri = request.getParameter("txtprice");
                String manhinh = request.getParameter("txtmanhinh");
                String ram = request.getParameter("txtram");
                String hdd = request.getParameter("txthdd");
                String cpu = request.getParameter("txtcpu");
                String khuyenmai = request.getParameter("txtkhuyenmai");
                String baohanh = request.getParameter("txtbaohanh");
                String hinh = request.getParameter("txthinh");
                int nkhuyenmai=Integer.parseInt(khuyenmai);
                float fpri =Float.parseFloat(pri);
                Product sp = new Product(code, name, fpri, manhinh, ram, hdd, cpu, nkhuyenmai, baohanh, hinh);
                request.setAttribute("SP", sp);
                RequestDispatcher rd = request.getRequestDispatcher("chinhsuasp.jsp");
                rd.forward(request, response);
            
            }else if(action.equals("Update")){

                
                String code = request.getParameter("txtcode");
                String name = request.getParameter("txtname");
                String pri = request.getParameter("txtprice");
                String manhinh = request.getParameter("txtmanhinh");
                String ram = request.getParameter("txtram");
                String hdd = request.getParameter("txthdd");
                String cpu = request.getParameter("txtcpu");
                String khuyenmai = request.getParameter("txtkhuyenmai");
                String baohanh = request.getParameter("txtbaohanh");
                String hinh = request.getParameter("txthinh");
                String ten = request.getParameter("txtTenSP");
                int nkhuyenmai=Integer.parseInt(khuyenmai);
                float fpri =Float.parseFloat(pri);
                String url="Product.jsp";
                Products sp = new Products();
                sp.insert(name, fpri, manhinh, ram, hdd, cpu, nkhuyenmai, baohanh, hinh, code);
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
                
                
                
                
            }else if(action.equals("Thêm")){
                String code = request.getParameter("txtcode");
                String name = request.getParameter("txtname");
                String pri = request.getParameter("txtprice");
                String manhinh = request.getParameter("txtmanhinh");
                String ram = request.getParameter("txtram");
                String hdd = request.getParameter("txthdd");
                String cpu = request.getParameter("txtcpu");
                String khuyenmai = request.getParameter("txtkhuyenmai");
                String baohanh = request.getParameter("txtbaohanh");
                String hinh = request.getParameter("txthinh");
                
                int nkhuyenmai=Integer.parseInt(khuyenmai);
                float fpri =Float.parseFloat(pri);
                Products sp = new Products();
                sp.newsp(code,name, fpri, manhinh, ram, hdd, cpu, nkhuyenmai, baohanh, hinh);
                RequestDispatcher rd = request.getRequestDispatcher("CtrlProducts?action=Tìm+Kiếm&txtTenSP");
                rd.forward(request, response);
                
                
            }
            else if(action.equals("Thêm Sản Phẩm")){
                RequestDispatcher rd = request.getRequestDispatcher("newsp.jsp");
                rd.forward(request, response);
            }else if(action.equals("Quản lí tài khoản")){
                RequestDispatcher rd = request.getRequestDispatcher("Quanliuser.jsp");
                rd.forward(request, response);
            }if(action.equals("Logout")){
                     HttpSession session = request.getSession(true);
                    session.invalidate();
                    RequestDispatcher rd = request.getRequestDispatcher("Trangchu.jsp");
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
