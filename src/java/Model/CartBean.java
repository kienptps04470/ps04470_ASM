/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.HashMap;

/**
 *
 * @author Admin
 */
public class CartBean  extends HashMap{
    public void addSanpham(ProductDTO sp){
      String key = sp.getSanpham().getCode();
      if(this.containsKey(key)){
          int oltQuantity =((ProductDTO)this.get(key)).getQuantity();
      ((ProductDTO) this.get(key)).setQuantity(oltQuantity+1);
      }else{
          this.put(sp.getSanpham().getCode(),sp);
      }
    }
   public boolean xoasanpham(String code){
       if(this.containsKey(code)){
           this.remove(code);
           return true;
       }
       return  false;
   }
   public CartBean(){
       super();
   }
}
