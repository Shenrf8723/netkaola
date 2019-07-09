package com.dhnsoft.controller;

import com.dhnsoft.po.Category;
import com.dhnsoft.po.Commodity;
import com.dhnsoft.po.Pager;
import com.dhnsoft.service.category.CategoryService;
import com.dhnsoft.service.commodity.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class CommodityController {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private CommodityService commodityService;
    @RequestMapping("findPageCommodity")
    public String findPageCommodity(String currentPage, Commodity commodity, Model model, String b_cate, String b_name){
        Pager pager=new Pager(currentPage);
        Integer currentPage2=(pager.getCurrentPage()-1)*pager.getPageSize();
        commodity.setCid(b_cate);
        commodity.setName(b_name);
        List<Commodity> pageCommodity = commodityService.findPageCommodity(commodity.getCid(),commodity.getName(),currentPage2,pager.getPageSize());
        //查询全部商品分类信息
        List<Category> categoryMsg = categoryService.findCommodity();
        System.out.println(pageCommodity);
        pager.setRs(pageCommodity);
        pager.setTotal(findPageNum(b_cate,b_name));
        model.addAttribute("categoryMsg",categoryMsg);
        model.addAttribute("pager",pager);
        model.addAttribute("b_cate",b_cate);
        model.addAttribute("b_name",b_name);
        return "queryCommodity";
    }
    //查询分页数量
    private Integer findPageNum(String cid,String name){
        Integer pageNum = commodityService.findPageNum(cid,name);
        return pageNum;
    }
    //修改商品信息
    @RequestMapping("updateCommodity")
    public String updateCommodity(@RequestParam("uploadfile")List<MultipartFile> uploadfile, HttpServletRequest request, HttpServletResponse response, Commodity commodity, Model model) throws ServletException, IOException {
        String fileName="";
            //循环上传的文件
            for (MultipartFile file:uploadfile){
                //获取上传文件的原始名称
                String originalFilename =file.getOriginalFilename();
                //设置上传文件的保存地址目录
                String dirPath=request.getServletContext().getRealPath("/images/upload/");
                File filePath=new File(dirPath);
                //如果保存文件的地址不存在，就先创建目录
                if(!filePath.exists()){
                    filePath.mkdirs();
                }
                //使用UUID重新命名上传的文件名称（上传人_uuid_原始文件名称）
                String newFilename=UUID.randomUUID()+"_"+originalFilename;

                try {
                    //使用MultipartFile接口的方法完成文件上传到指定位置
                    file.transferTo(new File(dirPath+newFilename));
                    fileName="images/upload/"+newFilename;
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
            commodity.setImg(fileName);
        System.out.println(fileName);
        System.out.println(commodity+"123");
        int i = commodityService.updateCommodity(commodity);
        if(i!=0){
            model.addAttribute("msg","修改成功");
            request.getRequestDispatcher("findPageCommodity?currentPage=1").forward(request,response);
            return "queryCommodity";
        }else {
            model.addAttribute("msg","修改失败");
            request.getRequestDispatcher("findPageCommodity?currentPage=1").forward(request,response);
            return "queryCommodity";
        }
    }

    //删除商品信息
    @RequestMapping("deleteCommodity")
    public String deleteCommodity(Integer id,Model model,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        int num = commodityService.deleteCommidity(id);
        if(num!=0){
            request.getRequestDispatcher("findPageCommodity?currentPage=1").forward(request,response);
            model.addAttribute("msg","删除成功");
            return "queryCommodity";
        }else {
            request.getRequestDispatcher("findPageCommodity?currentPage=1").forward(request,response);
            model.addAttribute("msg","删除错误");
            return "queryCommodity";
        }
    }
    @RequestMapping("toAddCommodity")
    public String toAddCommodity(Model model){
        List<Category> categoryMsg = categoryService.findCommodity();
        model.addAttribute("categoryMsg",categoryMsg);
        System.out.println(categoryMsg);
        return "addCommodity";
    }
    //添加商品信息
    @RequestMapping("addCommodity")
    public String addCommodity(Commodity commodity,@RequestParam("uploadfile")List<MultipartFile> uploadfile,HttpServletRequest request,HttpServletResponse response,Model model) throws ServletException, IOException {
        String fileName="";
        //循环上传的文件
        for (MultipartFile file:uploadfile){
            //获取上传文件的原始名称
            String originalFilename =file.getOriginalFilename();
            //设置上传文件的保存地址目录
            String dirPath=request.getServletContext().getRealPath("/images/upload/");
            File filePath=new File(dirPath);
            //如果保存文件的地址不存在，就先创建目录
            if(!filePath.exists()){
                filePath.mkdirs();
            }
            //使用UUID重新命名上传的文件名称（上传人_uuid_原始文件名称）
            String newFilename=UUID.randomUUID()+"_"+originalFilename;

            try {
                //使用MultipartFile接口的方法完成文件上传到指定位置
                file.transferTo(new File(dirPath+newFilename));
                fileName="images/upload/"+newFilename;
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        commodity.setImg(fileName);
        System.out.println(fileName);
        int i = commodityService.addCommidity(commodity);
        if(i!=0){
            model.addAttribute("msg","添加成功");
            request.getRequestDispatcher("findPageCommodity?currentPage=1").forward(request,response);
            return "queryCommodity";
        }else {
            model.addAttribute("msg","修改失败");
            return "queryCommodity";
        }
    }

}