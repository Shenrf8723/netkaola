package com.dhnsoft.controller;

import com.dhnsoft.service.admin.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;
    //管理员退出
    @RequestMapping("/AdminQuit")
    public String AdminQuit(HttpServletRequest request,Model model){
        request.getSession(true).invalidate();
        model.addAttribute("msg","退出成功");
        return "login";
    }
}
