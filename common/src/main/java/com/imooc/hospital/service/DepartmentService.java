package com.imooc.hospital.service;

import com.imooc.hospital.entity.Department;

import java.util.List;

public interface DepartmentService {
    void add(Department department);

    void edit(Department department);

    Department findOne(Integer id);

    List<Department> findAll();

    List<Department> findByCategory(Department department);

    void remove(Integer id);
}
