package poly.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import poly.entity.LichChieu;
import poly.entity.Phim;

@Transactional
@Controller
public class DatVeController {
    @Autowired
    private SessionFactory factory;

    @RequestMapping("/datve/{ngay}.htm")
    public String datve(ModelMap model, @PathVariable("ngay") String ngay) {
        Date date = null;
        try {
            if (ngay != null) {
                date = new SimpleDateFormat("yyyy-MM-dd").parse(ngay.trim());
            } else {
                date = new Date();
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }

        List<LichChieu> list = layTatCaLichChieu();
        List<LichChieu> list_phu = new ArrayList<>();
        for (LichChieu u : list) {
            if (u.getNgayChieu().compareTo(date) == 0) {
                if (u.getNgayChieu().after(new Date())) {
                    list_phu.add(u);
                } else if (u.getGioChieu() > LocalTime.now().getHour()) {
                    list_phu.add(u);
                }
            }
        }

        List<Phim> phimListDangChieu = getMoviesFromLichChieu(list_phu);
        model.addAttribute("phimListDangChieu", phimListDangChieu);
        model.addAttribute("lc", list_phu);
        model.addAttribute("day", LocalDate.now());
        return "datve";
    }


    // Phim đang chiếu
    public List<Phim> getMoviesDangChieu() {
        Session session = factory.getCurrentSession();
        String hql = "FROM Phim WHERE NgayKhoiChieu <= :currentDate AND maTT = :maTT";
        Query query = session.createQuery(hql);
        query.setParameter("currentDate", new Date());
        query.setParameter("maTT", 1);
        @SuppressWarnings("unchecked")
        List<Phim> list = query.list();
        return list;
    }

    public List<LichChieu> layLichChieu(Integer maPhim) {
        Session session = factory.getCurrentSession();
        String hql = "FROM LichChieu WHERE dsPhim.maPhim = :maPhim";
        Query query = session.createQuery(hql);
        query.setParameter("maPhim", maPhim);
        @SuppressWarnings("unchecked")
        List<LichChieu> list = query.list();
        return list;
    }
    public List<LichChieu> layTatCaLichChieu() {
        Session session = factory.getCurrentSession();
        String hql = "FROM LichChieu";
        Query query = session.createQuery(hql);
        @SuppressWarnings("unchecked")
        List<LichChieu> list = query.list();
        return list;
    }

    public Phim layPhim(Integer maPhim) {
        Session session = factory.getCurrentSession();
        return (Phim) session.get(Phim.class, maPhim);
    }

    public List<Phim> getMoviesFromLichChieu(List<LichChieu> danhSachLichChieu) {
        Set<Integer> maPhimSet = new HashSet<>();
        for (LichChieu lichChieu : danhSachLichChieu) {
            maPhimSet.add(lichChieu.getDsPhim().getMaPhim());
        }

        List<Phim> danhSachPhim = new ArrayList<>();
        for (Integer maPhim : maPhimSet) {
            Phim phim = layPhim(maPhim);
            if (phim != null) {
                danhSachPhim.add(phim);
            }
        }
        return danhSachPhim;
    }
}
