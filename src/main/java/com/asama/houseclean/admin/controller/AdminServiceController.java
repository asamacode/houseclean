package com.asama.houseclean.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.asama.houseclean.entity.Service;
import com.asama.houseclean.service.ServicesService;

@Controller
@RequestMapping("/manager/services")
public class AdminServiceController {

    @Autowired
    ServicesService servicesService;

    @Autowired
    ServletContext app;
    
    @ResponseBody
    @RequestMapping("/delete/{id}")
    public boolean deleteUser(Model model, @PathVariable("id") Integer sId) {
        servicesService.delete(sId);
        return true;
    }

    @GetMapping("/edit/{id}")
    public String edit(Model model, @PathVariable("id") Integer sId) {
        Service s = servicesService.findById(sId);
        model.addAttribute("service", s);
        return "admin/service/edit";
    }

    @PostMapping("/edit")
    public String edit(Model model, @Validated @ModelAttribute("service") Service service, BindingResult errors,
            @RequestParam("photo_file") MultipartFile file) throws IllegalStateException, IOException {

        if (errors.hasErrors()) {
            model.addAttribute("message", "Vui lòng nhập thông tin hợp lệ !");
            return "admin/service/edit";
        }

        if (!file.isEmpty()) {
            service.setImage(file.getOriginalFilename());
            String path = app.getRealPath("/static/images/services/" + service.getImage());
            File f = new File(path);
            file.transferTo(f);
        }

        servicesService.update(service);
        model.addAttribute("message", "Cập nhật thành công !");

        return "admin/service/edit";
    }

    @GetMapping("/add")
    public String insert(Model model) {
        Service s = new Service();
        model.addAttribute("service", s);
        return "admin/service/add";
    }

    @PostMapping("/add")
    public String insert(Model model, @Validated @ModelAttribute("service") Service service, BindingResult errors,
            @RequestParam("photo_file") MultipartFile file) throws IllegalStateException, IOException {

        if (errors.hasErrors()) {
            model.addAttribute("message", "Vui lòng nhập thông tin hợp lệ !");
            return "admin/service/add";
        }

        if (file.isEmpty()) {
            service.setImage("default_service.png");
        } else {
            service.setImage(file.getOriginalFilename());
            String path = app.getRealPath("/static/images/services/" + service.getImage());
            File f = new File(path);
            file.transferTo(f);
        }

        servicesService.create(service);
        model.addAttribute("message", "Thêm dịch vụ thành công !");

        return "admin/service/add";
    }

    @RequestMapping("/list")
    public String list(Model model) {
        List<Service> services = servicesService.getListServices();
        model.addAttribute("services", services);

        return "admin/service/list";
    }

}
