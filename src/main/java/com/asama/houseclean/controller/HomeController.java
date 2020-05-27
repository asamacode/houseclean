package com.asama.houseclean.controller;

import java.util.List;
import java.util.Optional;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asama.houseclean.MailInfo;
import com.asama.houseclean.entity.GuestRequest;
import com.asama.houseclean.entity.News;
import com.asama.houseclean.entity.Service;
import com.asama.houseclean.service.GuestRequestService;
import com.asama.houseclean.service.MailService;
import com.asama.houseclean.service.NewsService;
import com.asama.houseclean.service.ServicesService;

@Controller
public class HomeController {
    
    @Autowired
    ServicesService servicesService;
    
    @Autowired
    NewsService newsService;
    
    @Autowired
    GuestRequestService gService;
    
    @Autowired 
    MailService mailService;
   
    
    @GetMapping("/home/request/book/confirm/{id}")
    public String request(Model model, @PathVariable("id") Long id) {
        Optional<GuestRequest> guestRequest = gService.findByIdAndStatus(id);
        if (guestRequest.isPresent()) {
            GuestRequest request = guestRequest.get();
            request.setStatus(GuestRequest.STT_ACCEPT);
            gService.update(request);
            model.addAttribute("message", "Xác nhận thông tin đặt hẹn <b>thành công</b>, chúng tôi sẽ sớm liên lạc với bạn thông qua số điện thoại bạn đã cung cấp. Thanks !");
        } else {
            model.addAttribute("message", "Xác nhận thông tin đặt hẹn <b><i>không thành công</i></b>. Lịch hẹn này không tồn tại hoặc đã được xử lý. Thanks !");
        }
        return "home/book_success";
    }
    
    @GetMapping("/home/request/book")
    public String request(Model model) {
        model.addAttribute("req_book", new GuestRequest());
        List<String> times = gService.initTimes();
        model.addAttribute("times", times);
        return "home/quotes";
    }
    
    @PostMapping("/home/request/book")
    public String request(HttpServletRequest request, Model model,
            @Validated @ModelAttribute("req_book") GuestRequest guestRequest,
            BindingResult errors) throws MessagingException {
        
        if (errors.hasErrors()) {
            model.addAttribute("message", "Vui lòng nhập thông tin hợp lệ !");
            List<String> times = gService.initTimes();
            model.addAttribute("times", times);
            return "home/quotes";
        }
        guestRequest.setStatus(GuestRequest.STT_PROCESS);
        GuestRequest req = gService.create(guestRequest);
        
        Long request_id = req.getId();
        String from = "tranhuuluong888@gmail.com";
        String to = guestRequest.getEmail();
        String subject = "Xác nhận đặt lịch hẹn - Nhà sạch Pleiku";
        String url = request.getRequestURL().append("/confirm/" + request_id).toString();
        String body = "Bạn vừa yêu cầu đặt lịch hẹn Tư vấn và Khảo sát tại trang web "
                + "Vệ sinh nhà sạch Pleiku, " + "<br>Vui lòng click vào đây để <a href='" + url
                + "'>Xác nhận</a> <br>"
                + "Nếu không phải là bạn, xin hãy bỏ qua email này.<br>"
                + "<b>Nhà sạch Pleiku</b><br>"
                + "Chúc bạn một ngày tốt lành !"
                + "Trân trọng.";
        MailInfo mailInfo = new MailInfo(from, to, subject, body);
        
        mailService.send(mailInfo);
        
        model.addAttribute("message", "Đã gửi yêu cầu, vui lòng vào email để xác nhận !");
        return "home/quotes";
    }

    @RequestMapping(value = {"/home", "/"})
    public String home(Model model) {
        List<Service> services = servicesService.getListSpecialServices();
        List<News> news = newsService.getListNewest();
        model.addAttribute("s_special", services);
        model.addAttribute("n_newest", news);
        return "home/index";
    }
   
}
