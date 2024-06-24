 package admin.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.controller.LoginController;
import poly.entity.ChiTietTheLoai;
import poly.entity.KhachHang;
import poly.entity.LichChieu;
import poly.entity.LoaiVe;
import poly.entity.NhanVien;
import poly.entity.Phim;
import poly.entity.PhongChieu;
import poly.entity.TaiKhoan;
import poly.entity.Ve;

@Transactional
@Controller
@RequestMapping("/admin/")
public class ShowController {
	@Autowired
	SessionFactory factory;
	
	
	public List<KhachHang> getUsers() {
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang";
		Query query = session.createQuery(hql);
		List<KhachHang> list = query.list();
		return list;
	}
	public List<Ve> getVes() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Ve";
		Query query = session.createQuery(hql);
		List<Ve> list = query.list();
		return list;
	}
	
	@RequestMapping("dashboard")
	public String dashboard(ModelMap model) {
		int countUser = getUsers().size();
		int countVe = getVes().size();
		int countPhim = getPhims().size();

		List<Phim> phims = getPhims();
		model.addAttribute("countUser", countUser);
		model.addAttribute("countVe", countVe);
		model.addAttribute("countPhim", countPhim);
		model.addAttribute("phim", phims);
		
		return "admin/dashboard";
	}
	
	@RequestMapping("profile")
	public String profile(ModelMap model,HttpSession ss) {
		model.addAttribute("tk", LoginController.taikhoan);		
		model.addAttribute("user", LoginController.nv);
		model.addAttribute("mk", LoginController.matKhau);
		return "admin/profile";
	}
	
	@RequestMapping(value="employee",method = RequestMethod.GET)
	public String employee(ModelMap model,HttpServletRequest request,HttpSession ss) {
		HttpSession session = request.getSession();
		if(session.getAttribute("user")==null)
		{
			model.addAttribute("user",LoginController.nv);
			model.addAttribute("tk", LoginController.taikhoan);
		}
		else
		{
			TaiKhoan a= (TaiKhoan) session.getAttribute("tk");
			model.addAttribute("tk",a);
			
			NhanVien nv = (NhanVien) session.getAttribute("user");
			model.addAttribute("user", nv);
		}
		
		// XUAT RA HET TAT CA LIST NHAN VIEN
		
//		Session session_1 = factory.getCurrentSession(); 
//		String hql = "FROM NhanVien ";
//		Query query = session_1.createQuery(hql); 
//		List<NhanVien> list = query.list();
//		model.addAttribute("nv", list);
//		model.addAttribute("NhanVien", new NhanVien());
//		model.addAttribute("TaiKhoan", new TaiKhoan());
//		return "admin/employee";
	
		
		// TIM THEO DIEU KIEN SO DIEN THOAI
		
		
//		Session session_1 = factory.getCurrentSession(); 
//		String hql = "FROM NhanVien WHERE SDT = :SDT";
//		Query query = session_1.createQuery(hql);
//		query.setParameter("SDT", "0814201800");
//		List<NhanVien> list = query.list();
//		model.addAttribute("nv", list);
//		model.addAttribute("NhanVien", new NhanVien());
//		model.addAttribute("TaiKhoan", new TaiKhoan());
//		return "admin/employee";
		
		// XUAT RA LIST QUYEN 'NV' ('QL' )
		Session session_1 = factory.getCurrentSession(); 
		String hql = "SELECT nv FROM NhanVien nv JOIN nv.dstaikhoan tk WHERE tk.quyen.maQuyen = 'NV'";
		Query query = session_1.createQuery(hql);
		List<NhanVien> list = query.list();
		model.addAttribute("nv", list);
		model.addAttribute("NhanVien", new NhanVien());
		model.addAttribute("TaiKhoan", new TaiKhoan());
		return "admin/employee";
	}
	
	@RequestMapping("customer")
	public String customer(ModelMap model,HttpServletRequest request,HttpSession ss) {
		Session session = factory.getCurrentSession(); 
		String hql = "FROM KhachHang";
		Query query = session.createQuery(hql); 
		List<KhachHang> list = query.list();
		model.addAttribute("kh", list);
		return "admin/customer";
	}
	
	@RequestMapping("type")
	public String type(ModelMap model,HttpServletRequest request,HttpSession ss) {
		Session session = factory.getCurrentSession(); 
		String hql = "FROM ChiTietTheLoai";
		Query query = session.createQuery(hql); 
		List<ChiTietTheLoai> list = query.list();
		model.addAttribute("type", list);
		return "admin/type";
	}
	
	@RequestMapping("movie")
	public String movie(ModelMap model,HttpServletRequest request,HttpSession ss) {
		Session session = factory.getCurrentSession(); 
		String hql = "FROM Phim";
		Query query = session.createQuery(hql); 
		List<Phim> list = query.list();
		
		model.addAttribute("phim", list);
		model.addAttribute("dsCTTL", getAllCTTL());
		return "admin/movie";
	}
	
	public List<ChiTietTheLoai> getAllCTTL() {
		Session session = factory.getCurrentSession();
		String hql = "FROM ChiTietTheLoai";
		Query query = session.createQuery(hql);
		return  query.list();
	}
	
	@RequestMapping("ticket")
	public String ticket(ModelMap model,HttpServletRequest request,HttpSession ss) {
		Session session = factory.getCurrentSession(); 
		String hql = "FROM LoaiVe";
		Query query = session.createQuery(hql); 
		List<LoaiVe> list = query.list();
		
		model.addAttribute("lv", list);
		return "admin/ticket";
	}
	
	@RequestMapping("room")
	public String room(ModelMap model,HttpServletRequest request,HttpSession ss) {
		Session session = factory.getCurrentSession(); 
		String hql = "FROM PhongChieu";
		Query query = session.createQuery(hql); 
		List<PhongChieu> list = query.list();
		
		model.addAttribute("pc", list);
		return "admin/room";
	}
	
	@RequestMapping("tickets")
	public String tickets(ModelMap model,HttpServletRequest request,HttpSession ss) {
		Session session = factory.getCurrentSession(); 
		String hql = "FROM LoaiVe";
		Query query = session.createQuery(hql); 
		List<LoaiVe> list = query.list();
		
		model.addAttribute("ve", list);
		return "admin/tickets";
	}
	
	@RequestMapping("order")
	public String order(ModelMap model,HttpServletRequest request,HttpSession ss) {
		Session session = factory.getCurrentSession(); 
		String hql = "FROM Ve";
		Query query = session.createQuery(hql); 
		List<Ve> list = query.list();
		
		model.addAttribute("ve", list);
		return "admin/order";
	}
	
	public List<Phim> getPhimsTrue(){
		Session session = factory.getCurrentSession();
		String hql = "FROM Phim";
		Query query = session.createQuery(hql);
		List<Phim> list = query.list();
		List<Phim> listTrue = new ArrayList<Phim>();
		for(Phim p : list) {
			if(p.getMaTT()!=2) {
				listTrue.add(p);
			}
		}
		
		return listTrue;
	}
	public List<Phim> getPhims(){
		Session session = factory.getCurrentSession();
		String hql = "FROM Phim where maTT=1";
		Query query = session.createQuery(hql);
		List<Phim> list = query.list();
		return list;
	}
	public List<PhongChieu> getRooms() {
		Session session = factory.getCurrentSession();
		String hql = "FROM PhongChieu";
		Query query = session.createQuery(hql);
		List<PhongChieu> list = query.list();
		return list;
	}
	public List<PhongChieu> getRoomsTrue(){
		Session session = factory.getCurrentSession();
		String hql = "FROM PhongChieu";
		Query query = session.createQuery(hql);
		List<PhongChieu> list = query.list();
		List<PhongChieu> listTrue = new ArrayList<PhongChieu>();
		for(PhongChieu p : list) {
			if(p.getTrangThai()==false) {
				listTrue.add(p);
			}
		}
		
		return listTrue;
	}
	@RequestMapping("showtimes")
	public String showtimes(ModelMap model,HttpServletRequest request,HttpSession ss) {
		Session session = factory.getCurrentSession(); 
		String hql = "FROM LichChieu";
		Query query = session.createQuery(hql); 
		List<LichChieu> list = query.list();
		List<Phim> phimTrue = getPhimsTrue();
		List<PhongChieu> phongChieuTrue = getRoomsTrue();
		
		model.addAttribute("lc", list);
		model.addAttribute("pct", phongChieuTrue);
		model.addAttribute("pt", phimTrue);

		return "admin/showtimes";
	}
	
}