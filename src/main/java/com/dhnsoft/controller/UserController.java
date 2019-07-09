package com.dhnsoft.controller;

import com.dhnsoft.mapper.adminMapper.AdminMapper;
import com.dhnsoft.mapper.commodityMapper.CommodityMapper;
import com.dhnsoft.mapper.shoppingMapper.ShoppingMapper;
import com.dhnsoft.po.*;
import com.dhnsoft.service.admin.AdminService;
import com.dhnsoft.service.category.CategoryService;
import com.dhnsoft.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private AdminService adminService;
    @Autowired
    private CommodityMapper commodityMapper;
    @Autowired
    private ShoppingMapper shoppingMapper;
    //跳转到登录页面
    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }
    //测试登录
    @RequestMapping("/findUser")
    public String findUser(@RequestParam(value="username") String name,String password,User u, Model model, String code, String user, HttpServletRequest request, HttpServletResponse response){
        HttpSession session = request.getSession(true);
        Object realcode = session.getAttribute("realcode");
        String username=u.getUsername();
        String pwd=u.getPassword();
        User user1=new User();
        user1.setUsername(username);
        user1.setPassword(pwd);
        Integer count = userService.userLogin(user1);
        AdminIstrator adminIstrator=new AdminIstrator();
        adminIstrator.setName(name);
        adminIstrator.setPassword(password);
        List<AdminIstrator> adminMsg = adminService.findAdminMsg(adminIstrator);
        List<Commodity> t1 = commodityMapper.findCommidtiyByCid("t1");
        List<Commodity> t2 = commodityMapper.findCommidtiyByCid("t2");
        List<Commodity> t3 = commodityMapper.findCommidtiyByCid("t3");
        List<Commodity> t4 = commodityMapper.findCommidtiyByCid("t4");
        List<Commodity> t5 = commodityMapper.findCommidtiyByCid("t5");
        if(user.equals("user")){
            List<Category> commodity = categoryService.findCommodity();
            if(count==0){
                model.addAttribute("msg","用户账号密码错误");
                return "login";
            }else if (!code.toLowerCase().equals(realcode.toString().toLowerCase())){
                model.addAttribute("msg","验证码错误");
                return "login";
            }else{

                List<Shopping> shoppingMsg = shoppingMapper.findShoppingMsg();
                model.addAttribute("shoppingMsg",shoppingMsg);
                model.addAttribute("commodity",commodity);
                model.addAttribute("t1",t1);
                model.addAttribute("t2",t2);
                model.addAttribute("t3",t3);
                model.addAttribute("t4",t4);
                model.addAttribute("t5",t5);
                model.addAttribute("shoppingNum",shoppingMsg.size());
                model.addAttribute("user",user1.getUsername());
                return "index";
            }
        }
        else{
            String aname=adminMsg.get(0).getName();
            String headportrait=adminMsg.get(0).getHeadportrait();
            if(adminMsg.size()==0){
                model.addAttribute("msg","管理员账号密码错误");
                return "login";
            }else if (!code.toLowerCase().equals(realcode.toString().toLowerCase())){
                model.addAttribute("msg","验证码错误");
                return "login";
            }else {
                model.addAttribute("aname",aname);
                model.addAttribute("headportrait",headportrait);
                return "frame";
            }
        }

    }
    //测试注册中用户名是否重复
    @RequestMapping("/TestSignUser")
    public  @ResponseBody Integer TestSignUser(@RequestBody User user){
        Integer l = userService.signRepetition(user.getUsername());
        return l;
    }
    //注册用户信息
    @RequestMapping("signUser")
    public String signUser(User user,Model model){
        int rows = userService.addUserMsg(user);
        System.out.println(rows);
        if(rows==1){
            model.addAttribute("msg","注册成功!");
            return "login";
        }else {
            model.addAttribute("msg","注册失败!");
            return "login";
        }

    }
    //用户退出
    @RequestMapping("/UserQuit")
    public String AdminQuit(HttpServletRequest request,Model model){
        request.getSession(true).invalidate();
        model.addAttribute("msg","退出成功");
        return "login";
    }

    //跳转至商品详情页面
    @RequestMapping("toDetails")
    public String toDetails(Integer id,Model model,String name){
        List<Shopping> shoppingMsg = shoppingMapper.findShoppingMsg();
        Integer shoppingNum=shoppingMsg.size();
        System.out.println(shoppingMsg+"123");
        List<Commodity> t1 = commodityMapper.findCommidtiyByCid("t1");
        List<Commodity> t2 = commodityMapper.findCommidtiyByCid("t2");
        List<Commodity> t3 = commodityMapper.findCommidtiyByCid("t3");
        List<Commodity> t4 = commodityMapper.findCommidtiyByCid("t4");
        List<Commodity> t5 = commodityMapper.findCommidtiyByCid("t5");
        List<Category> commodity = categoryService.findCommodity();
        List<Commodity> commidtiyById = commodityMapper.findCommidtiyById(id);
        model.addAttribute("commidtiyById",commidtiyById);
        model.addAttribute("commodity",commodity);
        model.addAttribute("t1",t1);
        model.addAttribute("t2",t2);
        model.addAttribute("t3",t3);
        model.addAttribute("t4",t4);
        model.addAttribute("t5",t5);
        model.addAttribute("shoppingNum",shoppingNum);
        model.addAttribute("user",name);
        return "details";
    }

    //跳转至购物车
    @RequestMapping("toShopping")
    public String toShopping(Model model,String name){
        List<Shopping> shoppingMsg = shoppingMapper.findShoppingMsg();
        System.out.println(shoppingMsg);
        model.addAttribute("shoppingMsg",shoppingMsg);
        model.addAttribute("shoppingNum",shoppingMsg.size());
        model.addAttribute("user",name);
        return "shopping";
    }

    //跳转至商品分类页面
    @RequestMapping("toCommodityCategory")
    public String toCommodityCategory(Model model,String name){
        List<Shopping> shoppingMsg = shoppingMapper.findShoppingMsg();
        List<Commodity> t1 = commodityMapper.findCommidtiyByCid("t1");
        List<Commodity> t2 = commodityMapper.findCommidtiyByCid("t2");
        List<Commodity> t3 = commodityMapper.findCommidtiyByCid("t3");
        List<Commodity> t4 = commodityMapper.findCommidtiyByCid("t4");
        List<Commodity> t5 = commodityMapper.findCommidtiyByCid("t5");
        List<Category> commodity = categoryService.findCommodity();
        List<Commodity> commodity1 = commodityMapper.findCommodity();
        model.addAttribute("commodity",commodity);
        model.addAttribute("commodity1",commodity1);
        model.addAttribute("t1",t1);
        model.addAttribute("t2",t2);
        model.addAttribute("t3",t3);
        model.addAttribute("t4",t4);
        model.addAttribute("t5",t5);
        model.addAttribute("shoppingNum",shoppingMsg.size());
        model.addAttribute("user",name);
        return "commodityCategory";
    }
    //跳转至国家馆
    @RequestMapping("toguoJiaGuan")
    public String toguoJiaGuan(){
        return "guoJiaGuan";
    }

    //利用ajax添加购物车数据
    @RequestMapping("addShopping")
    @ResponseBody
    public Integer addShopping(@RequestBody Shopping shopping){
        int i = shoppingMapper.addShopping(shopping);
        if(i!=0){
            return 1;
        }else {
            return 0;
        }
    }
    //利用ajax移除购物车信息
    @RequestMapping("delShopping")
    public Integer addShopping(Integer id){
        int i = shoppingMapper.delShopping(id);
        if(i!=0){
            return 1;
        }else {
            return 0;
        }
    }
    @RequestMapping("toIndex")
    public String toIndex(String name,Model model){
        List<Commodity> t1 = commodityMapper.findCommidtiyByCid("t1");
        List<Commodity> t2 = commodityMapper.findCommidtiyByCid("t2");
        List<Commodity> t3 = commodityMapper.findCommidtiyByCid("t3");
        List<Commodity> t4 = commodityMapper.findCommidtiyByCid("t4");
        List<Commodity> t5 = commodityMapper.findCommidtiyByCid("t5");
        List<Category> commodity = categoryService.findCommodity();
        List<Shopping> shoppingMsg = shoppingMapper.findShoppingMsg();
        model.addAttribute("shoppingMsg",shoppingMsg);
        model.addAttribute("commodity",commodity);
        model.addAttribute("t1",t1);
        model.addAttribute("t2",t2);
        model.addAttribute("t3",t3);
        model.addAttribute("t4",t4);
        model.addAttribute("t5",t5);
        model.addAttribute("user",name);
        return "index";
    }
}
