/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.DAO;

import DBprovider.DBconn;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.BEAN.Nhanvien;

public class listNhanvienDAO {
    public ArrayList<Nhanvien> getNVList() throws SQLException {
        
        ArrayList<Nhanvien> result = new ArrayList<Nhanvien>();
        DBconn.connection = DBconn.getConnection();
        String SQL_Query_String = "SELECT * FROM nhanvien";
        if(DBconn.connection !=null){
            Statement stmt = DBconn.connection.createStatement();
            ResultSet rs = stmt.executeQuery(SQL_Query_String);
            while(rs.next()){
                Nhanvien nv =new Nhanvien();
                nv.setManv(rs.getInt("MaNV"));
                nv.setHoten(rs.getString("HoTen"));                
                nv.setLuongcoban(rs.getString("LuongCoBan"));
                nv.setMachucvu(rs.getString("MaChucVu"));
                nv.setPhucap(rs.getString("PhuCap"));
                nv.setBacluong(rs.getString("Bacluong"));
                nv.setTonggiolam(rs.getString("TongGioLam"));
                nv.setSdt(rs.getString("Sdt"));
                nv.setTongluong(rs.getString("TongLuong"));
                nv.setDiachi(rs.getString("DiaChi"));
                nv.setGioitinh(rs.getString("GioiTinh"));
                nv.setNgaysinh(rs.getDate("NgaySinh"));
                nv.setEmail(rs.getString("Email"));
                result.add(nv);
            }
        }
        return result;
    }
}