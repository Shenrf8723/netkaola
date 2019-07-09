package com.dhnsoft.controller;

import com.dhnsoft.mapper.categoryMapper.CategoryMapper;
import com.dhnsoft.po.Category;
import com.dhnsoft.service.category.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class CategoryController {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private CategoryMapper categoryMapper;
    //查询全部的商品分类
    public List<Category> findCategoryMsg(){
        List<Category> commodity = categoryService.findCommodity();
        return commodity;
    }

    //将查询的商品分类信息传到分类页面
    @RequestMapping("toQueryCategory")
    public String toQueryCategory(Model model){
        List<Category> commodity = categoryService.findCommodity();
        model.addAttribute("commodity",commodity);
        return "queryCategory";
    }
    @RequestMapping("updateCategory")
    public String updateCategory(Category category, Model model, HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException {
        int i = categoryMapper.updateCategory(category);
        System.out.println(category);
        if(i!=0){
            request.getRequestDispatcher("toQueryCategory").forward(request,response);
            return "queryCategory";
        }else {
            request.getRequestDispatcher("toQueryCategory").forward(request,response);
            return "queryCategory";
        }
    }
    @RequestMapping("deleteCategory")
    public String deleteCategory(String cid,HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException {
        categoryMapper.deleteCategory(cid);
        request.getRequestDispatcher("toQueryCategory").forward(request,response);
        return "queryCategory";
    }
    @RequestMapping("toAddCategory")
    public String toAddCategory(){
        return "addCategory";
    }
    //添加商品分类信息
    @RequestMapping("addCategory")
    public String addCategory(Category category,HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException {
        categoryMapper.addCategory(category);
        request.getRequestDispatcher("toQueryCategory").forward(request,response);
        return "queryCategory";
    }

}