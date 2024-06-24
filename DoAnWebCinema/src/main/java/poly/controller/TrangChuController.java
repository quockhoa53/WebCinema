package poly.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.entity.*;

@Transactional
@Controller
@RequestMapping("/phim/")
public class TrangChuController {
    
    @Autowired
    SessionFactory factory;

    @RequestMapping("trangchu")
    public String list(ModelMap model) {
    	List<Phim> phimList = getMovies();
        model.addAttribute("phimList", phimList);
        
    	List<Phim> phimListDangChieu = getMoviesDangChieu();
        model.addAttribute("phimListDangChieu", phimListDangChieu);
        
    	List<Phim> phimListHot = getMoviesHot();
        model.addAttribute("phimListHot", phimListHot);
        
    	List<Phim> phimListSapChieu = getMoviesSapChieu();
        model.addAttribute("phimListSapChieu", phimListSapChieu);
        
    	List<SuKien> sukienList = getSuKien();
        model.addAttribute("sukienList", sukienList);
        
        model.addAttribute("user", LoginController.kh);
        
        // Add current date to model
        String currentDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        model.addAttribute("currentDate", currentDate);
        
        return "trangchu";
    }
    
    //All phim
    public List<Phim> getMovies() {
   	 Session session = factory.getCurrentSession();
        String hql = "FROM Phim";
        Query query = session.createQuery(hql);
        @SuppressWarnings("unchecked")
        List<Phim> list = query.list();
        return list;
   }
    
    //3 phim hot nhất 
    public List<Phim> getMoviesHot() {
   	 Session session = factory.getCurrentSession();
        String hql = "FROM Phim ORDER BY DiemIMDb DESC";
        Query query = session.createQuery(hql);
        query.setMaxResults(3);
        @SuppressWarnings("unchecked")
        List<Phim> list = query.list();
        return list;
   }
    
  //Phim đang chiếu
    public List<Phim> getMoviesDangChieu() {
      	 Session session = factory.getCurrentSession();
           String hql = "FROM Phim WHERE NgayKhoiChieu <= :currentDate AND MaTT = 1";
           Query query = session.createQuery(hql);
           query.setParameter("currentDate", new Date());
           @SuppressWarnings("unchecked")
           List<Phim> list = query.list();
           return list;
    }
    
    //Phim sắp chiếu
    public List<Phim> getMoviesSapChieu() {
   	 Session session = factory.getCurrentSession();
        String hql = "FROM Phim WHERE NgayKhoiChieu > :currentDate";
        Query query = session.createQuery(hql);
        query.setParameter("currentDate", new Date());
        @SuppressWarnings("unchecked")
        List<Phim> list = query.list();
        return list;
   }
    
    public List<SuKien> getSuKien() {
   	 Session session = factory.getCurrentSession();
        String hql = "FROM SuKien";
        Query query = session.createQuery(hql);
        @SuppressWarnings("unchecked")
        List<SuKien> list = query.list();
        return list;
   }
}