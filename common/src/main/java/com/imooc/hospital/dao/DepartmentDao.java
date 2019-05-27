package com.imooc.hospital.dao;

import com.imooc.hospital.entity.Department;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("departmentDao")
public interface DepartmentDao {
    void insert(Department department);

    void update(Department department);

    void delete(Integer id);

    Department selectById(Integer id);

    List<Department> selectList(Department categoryId);

//    List<Department> selectByCategory(Integer categoryId);
}
