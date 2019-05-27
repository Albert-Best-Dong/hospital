package com.imooc.hospital.service;

import com.imooc.hospital.entity.Category;

import java.util.List;

public interface CategoryService {
    void add(Category category);

    void edit(Category category);

    void remove(Integer id);

    Category findOne(Integer id);

    List<Category> findAll();
}
