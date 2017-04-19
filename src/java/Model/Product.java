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
public class Product {
        private String code;
        private String name;
        private float price;
        private String manhinh;
        private String ram;
        private String hdd;
        private String cpu;
        private int khuyenmai;
        private String baohanh;
        private String hinh;
    public Product(){
       
    }

    public Product(String code, String name, float price, String manhinh, String ram, String hdd, String cpu, int khuyenmai, String baohanh, String hinh) {
        this.code = code;
        this.name = name;
        this.price = price;
        this.manhinh = manhinh;
        this.ram = ram;
        this.hdd = hdd;
        this.cpu = cpu;
        this.khuyenmai = khuyenmai;
        this.baohanh = baohanh;
        this.hinh = hinh;
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

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getManhinh() {
        return manhinh;
    }

    public void setManhinh(String manhinh) {
        this.manhinh = manhinh;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getHdd() {
        return hdd;
    }

    public void setHdd(String hdd) {
        this.hdd = hdd;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public int getKhuyenmai() {
        return khuyenmai;
    }

    public void setKhuyenmai(int khuyenmai) {
        this.khuyenmai = khuyenmai;
    }

    public String getBaohanh() {
        return baohanh;
    }

    public void setBaohanh(String baohanh) {
        this.baohanh = baohanh;
    }

    public String getHinh() {
        return hinh;
    }

    public void setHinh(String hinh) {
        this.hinh = hinh;
    }

  
}
