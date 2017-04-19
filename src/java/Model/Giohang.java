/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Admin
 */
public class Giohang {

    private String code;
    private String name;
    private float gia;
    private String soluong;
    private String tenkh;
    private String ngaygio;
    
    public Giohang(){
        
    }

    public Giohang(String code, String name, float gia, String soluong, String tenkh, String ngaygio) {
        this.code = code;
        this.name = name;
        this.gia = gia;
        this.soluong = soluong;
        this.tenkh = tenkh;
        this.ngaygio = ngaygio;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getGia() {
        return gia;
    }

    public void setGia(float gia) {
        this.gia = gia;
    }

    public String getSoluong() {
        return soluong;
    }

    public void setSoluong(String soluong) {
        this.soluong = soluong;
    }

    public String getTenkh() {
        return tenkh;
    }

    public void setTenkh(String tenkh) {
        this.tenkh = tenkh;
    }

    public String getNgaygio() {
        return ngaygio;
    }

    public void setNgaygio(String ngaygio) {
        this.ngaygio = ngaygio;
    }

}