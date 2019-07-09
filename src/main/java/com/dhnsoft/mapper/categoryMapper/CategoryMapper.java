package com.dhnsoft.mapper.categoryMapper;

import com.dhnsoft.po.Category;


import java.util.List;

public interface CategoryMapper {
    //查询全部商品分类信息
    public List<Category> findCommodity();
    public int updateCategory(Category category);
    //删除商品分类信息
    public void deleteCategory(String cid);
    //添加商品分类信息
    public void addCategory(Category category);
}
