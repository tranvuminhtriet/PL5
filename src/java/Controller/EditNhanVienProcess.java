/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.BEAN.Nhanvien;
import model.BO.EditNhanVienBO;

/**
 *
 * @author ADMIN
 */
public class EditNhanVienProcess extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditNhanVienProcess</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditNhanVienProcess at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        doPost(request, response);
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
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("idnv");
        String name = request.getParameter("hoten");
        String phone = request.getParameter("sdt");
        String email = request.getParameter("email");
        String congtheongay = request.getParameter("congtheongay");
        String diachi = request.getParameter("diachi");
        String ngaysinh = request.getParameter("ngaysinh");
        String gioitinh = request.getParameter("gioitinh");
        String phucap = request.getParameter("phucap");
        Nhanvien nv = new Nhanvien();
        nv.setManv(id);
        Date testD = new Date();
        /*try {
            nv.setNgaysinh(ngaysinh);
        } catch (ParseException ex) {
            Logger.getLogger(EditNhanVienProcess.class.getName()).log(Level.SEVERE, null, ex);
        }*/
        nv.setNgaysinh(testD);
        nv.setHoten(name);
        nv.setCongtheongay(congtheongay);
        nv.setPhucap(phucap);
        nv.setSdt(phone);
        nv.setEmail(email);
        nv.setDiachi(diachi);
        nv.setGioitinh(gioitinh);
        
        EditNhanVienBO editnvBO = new EditNhanVienBO();
        
        if (editnvBO.editHocSinh(nv)) {
            String destination = "/DangnhapControler";
            RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
            rd.forward(request, response);
        } else {
            String destination = "/DangkyControler";
            RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
            rd.forward(request, response);
        }
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
