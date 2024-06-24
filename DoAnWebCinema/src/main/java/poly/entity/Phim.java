package poly.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Column;

import java.util.Collection;
import java.util.Date;

@Entity
@Table(name = "PHIM")
public class Phim {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaPhim")
    private int maPhim;

    @Column(name = "TenPhim")
    private String tenPhim;

    @Column(name = "MoTa", length = 1000)
    private String moTa;

    @Column(name = "NuocSX", length = 10)
    private String nuocSX;

    @Column(name = "NgayKhoiChieu")
    private Date ngayKhoiChieu;

    @Column(name = "NamSX")
    private int namSX;

    @Column(name = "DaoDien", length = 50)
    private String daoDien;
    
    @Column(name = "DienVien", length = 100)
    private String dienVien;
    
    @Column(name = "ThoiLuong")
    private int thoiLuong;
    
    @Column(name = "DiemIMDb")
    private float diemIMDb;
    
    @Column(name = "LinkAnh", length = 8000)
    private String linkAnh;
    
    @Column(name = "LinkIMDb", length = 8000)
    private String linkIMDb;
    
    @Column(name = "LinkTrailer", length = 8000)
    private String linkTrailer;
    
    @Column(name = "MaTT")
    private int maTT;

    @OneToMany(mappedBy="phim")
    @LazyCollection(LazyCollectionOption.FALSE)
	private Collection<TheLoai> theLoaiS ;
    
    // Constructors
    public Phim() {}
    public Collection<TheLoai> getTheLoaiS() {
		return theLoaiS;
	}

	public void setTheLoaiS(Collection<TheLoai> theLoaiS) {
		theLoaiS = theLoaiS;
	}

    public Phim(String tenPhim, String moTa, String nuocSX, Date ngayKhoiChieu, int namSX, String daoDien, String dienVien, int thoiLuong, float diemIMDb, String linkAnh, String linkIMDb, String linkTrailer, int maTT) {
        this.tenPhim = tenPhim;
        this.moTa = moTa;
        this.nuocSX = nuocSX;
        this.ngayKhoiChieu = ngayKhoiChieu;
        this.namSX = namSX;
        this.daoDien = daoDien;
        this.dienVien = dienVien;
        this.thoiLuong = thoiLuong;
        this.diemIMDb = diemIMDb;
        this.linkAnh = linkAnh;
        this.linkIMDb = linkIMDb;
        this.linkTrailer = linkTrailer;
        this.maTT = maTT;
    }

    // Getters and Setters
    public int getMaPhim() {
        return maPhim;
    }

    public void setMaPhim(int maPhim) {
        this.maPhim = maPhim;
    }

    public String getTenPhim() {
        return tenPhim;
    }

    public void setTenPhim(String tenPhim) {
        this.tenPhim = tenPhim;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public String getNuocSX() {
        return nuocSX;
    }

    public void setNuocSX(String nuocSX) {
        this.nuocSX = nuocSX;
    }

    public Date getNgayKhoiChieu() {
        return ngayKhoiChieu;
    }

    public void setNgayKhoiChieu(Date ngayKhoiChieu) {
        this.ngayKhoiChieu = ngayKhoiChieu;
    }

    public int getNamSX() {
        return namSX;
    }

    public void setNamSX(int namSX) {
        this.namSX = namSX;
    }

    public String getDaoDien() {
        return daoDien;
    }

    public void setDienVien(String dienVien) {
        this.dienVien = dienVien;
    }
    
    public String getDienVien() {
        return dienVien;
    }

    public void setDaoDien(String daoDien) {
        this.daoDien = daoDien;
    }
    
    public int getThoiLuong() {
        return thoiLuong;
    }

    public void setThoiLuong(int thoiLuong) {
        this.thoiLuong = thoiLuong;
    }
    
    public void setDiem(float diemIMDb) {
    	this.diemIMDb = diemIMDb;
    }
    
    public float getDiem() {
    	return diemIMDb;
    }
    
    public void setLinkAnh(String linkAnh) {
        this.linkAnh = linkAnh;
    }
    
    public String getLinkAnh() {
        return linkAnh;
    }
    
    public void setLinkIMDb(String linkIMDb) {
        this.linkIMDb = linkIMDb;
    }

    public String getLinkIMDb() {
        return linkIMDb;
    }
    
    public void setLinkTrailer(String linkTrailer) {
        this.linkTrailer = linkTrailer;
    }

    public String getLinkTrailer() {
        return linkTrailer;
    }
    
    public int getMaTT() {
        return maTT;
    }

    public void setMaTT(int maTT) {
        this.maTT = maTT;
    }
}
