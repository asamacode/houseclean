package com.asama.houseclean.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asama.houseclean.entity.GuestRequest;
import com.asama.houseclean.service.GuestRequestService;

@Controller
@RequestMapping("/admin/request")
public class AdminRequestController {

    @Autowired
    GuestRequestService gService;

    @RequestMapping(value = { "/list/accept", "list/accept/{page}" })
    public String listAccept(Model model, @PathVariable(required = false, name = "page") Integer page) {
        if (page == null) {
            page = 1;
        }
        List<GuestRequest> list = gService.getAcceptPage(page - 1);
        Integer pageCount = gService.getAcceptPageCount();

        model.addAttribute("reqs", list);
        model.addAttribute("page", page);
        model.addAttribute("pageCount", pageCount);
        return "admin/request/list";
    }

    @RequestMapping(value = { "/list/process", "list/process/{page}" })
    public String listProcess(Model model, @PathVariable(required = false, name = "page") Integer page) {
        if (page == null) {
            page = 1;
        }
        List<GuestRequest> list = gService.getProcessPage(page - 1);
        Integer pageCount = gService.getProcessPageCount();

        model.addAttribute("reqs", list);
        model.addAttribute("page", page);
        model.addAttribute("pageCount", pageCount);
        return "admin/request/list";
    }

    @RequestMapping(value = { "/list/complete", "list/complete/{page}" })
    public String listComplete(Model model, @PathVariable(required = false, name = "page") Integer page) {
        if (page == null) {
            page = 1;
        }
        List<GuestRequest> list = gService.getCompletePage(page - 1);
        Integer pageCount = gService.getCompletePageCount();

        model.addAttribute("reqs", list);
        model.addAttribute("page", page);
        model.addAttribute("pageCount", pageCount);
        return "admin/request/list";
    }

    @RequestMapping(value = { "/list/cancel", "list/cancel/{page}" })
    public String listCancel(Model model, @PathVariable(required = false, name = "page") Integer page) {
        if (page == null) {
            page = 1;
        }
        List<GuestRequest> list = gService.getCancelPage(page - 1);
        Integer pageCount = gService.getCancelPageCount();

        model.addAttribute("reqs", list);
        model.addAttribute("page", page);
        model.addAttribute("pageCount", pageCount);
        return "admin/request/list";
    }

}
