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
public class Lienhemd {
    private int code;
    private String name;
    private String email;
    private String message;
    private String ngaygio;
    public Lienhemd(){

}

    public Lienhemd(int code, String name, String email, String message, String ngaygio) {
        this.code = code;
        this.name = name;
        this.email = email;
        this.message = message;
        this.ngaygio = ngaygio;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getNgaygio() {
        return ngaygio;
    }

    public void setNgaygio(String ngaygio) {
        this.ngaygio = ngaygio;
    }
    
    
    
   }