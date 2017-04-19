/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.DAO;

import Ultil.NewHibernateUtil;
import identies.Khachhang;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Admin
 */
public class AccountDao {
    private Session session;
    public  AccountDao(){
        SessionFactory factory=NewHibernateUtil.getSessionFactory();
        this.session=factory.getCurrentSession();
    }
    
    public  void  Save(Khachhang khachhang){
        try{
            session.getTransaction().begin();
            session.save(khachhang);
            session.flush();
            session.getTransaction().commit();
        }catch(Exception e){
            if(session.getTransaction().isActive()){
                session.getTransaction().rollback();
        }
        e.printStackTrace();
    }
    
}
    public void delete(String Taikhoan){
        try{
            session.getTransaction().begin();
            session.delete(session.get(Khachhang.class,Taikhoan));
            session.flush();
            session.getTransaction().commit();
            
        }catch(Exception e){
            if(session.getTransaction().isActive()){
                session.getTransaction().rollback(); 
        }
            e.printStackTrace();
    }
    }

    public void update(Khachhang newkh, String tenTK){
           try{
              session.getTransaction().begin();
                Khachhang acc =(Khachhang)session.get(Khachhang.class,tenTK);
                acc.setMatkhau(newkh.getMatkhau());
                acc.setHoten(newkh.getHoten());
                acc.setEmail(newkh.getEmail());
                acc.setRole(newkh.getRole());
                session.update(acc);
                session.flush();
            session.getTransaction().commit();
               }catch(Exception e){
            if(session.getTransaction().isActive()){
                session.getTransaction().rollback(); 
        }
            e.printStackTrace();
    }   
}
     public  static List<Khachhang> hienthiDS(String Hoten){
        List<Khachhang> list =null;
        Session session = NewHibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        String sql ="from Khachhang";
        if(Hoten.trim().length()>0){
            sql += " Where Hoten like '%"+Hoten+"%'";
        }
        Query query =session.createQuery(sql);
        list=query.list();
        return list;
        
    }
     
}