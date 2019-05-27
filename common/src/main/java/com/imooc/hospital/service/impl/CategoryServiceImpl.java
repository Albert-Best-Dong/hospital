package com.imooc.hospital.service.impl;

import com.imooc.hospital.dao.CategoryDao;
import com.imooc.hospital.entity.Category;
import com.imooc.hospital.service.CategoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {
    @Resource(name = "categoryDao")
    private CategoryDao categoryDao;


    public void add(Category category) {
        Date initTime = new Date();
        category.setCreateTime(initTime);
        category.setUpdateTime(initTime);
        categoryDao.insert(category);
    }

    public void edit(Category category) {
        category.setUpdateTime(new Date());
        categoryDao.update(category);
    }

    public void remove(Integer id) {
        categoryDao.delete(id);
    }

    public Category findOne(Integer id) {
        return categoryDao.selectById(id);
    }

    public List<Category> findAll() {
        return categoryDao.selectAll();
    }
}
