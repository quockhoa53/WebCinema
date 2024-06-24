package poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PhimSapChieu {
	@RequestMapping("phimsapchieu")
	public String PhimSC() {
		return "phim/phimSapChieu";
	}
}
