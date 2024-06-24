package poly.controller;

import java.io.File;

import javax.servlet.ServletContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Transactional
@Controller
@RequestMapping("/customer/")
public class UploadController {
    @Autowired
    ServletContext context;

    @RequestMapping("account")
    public String form() {
        return "customer/account";
    }
    
    public String apply(ModelMap model, @RequestParam("photo") MultipartFile photo) {

        if (photo.isEmpty()) {
            model.addAttribute("message", "Vui lòng chọn file !");
        } else {
            try {
                String photoPath = context.getRealPath("/files/" + photo.getOriginalFilename());
                photo.transferTo(new File(photoPath));
                
                model.addAttribute("photo_name", photo.getOriginalFilename());
                
                return "customer/account";
            } catch (Exception e) {
                model.addAttribute("message", "Lỗi lưu file");
            }
        }
        return "job/form";
    }

}
