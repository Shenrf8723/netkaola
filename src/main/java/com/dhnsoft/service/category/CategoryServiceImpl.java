package com.dhnsoft.service.category;

import com.dhnsoft.mapper.categoryMapper.CategoryMapper;
import com.dhnsoft.po.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryMapper categoryMapper;
    @Override
    public List<Category> findCommodity() {
        return categoryMapper.findCommodity();
    }
}
