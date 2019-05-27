package com.imooc.hospital.service.impl;

import com.imooc.hospital.dao.DepartmentDao;
import com.imooc.hospital.entity.Department;
import com.imooc.hospital.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService {
    @Autowired
    private DepartmentDao departmentDao;

    public void add(Department department) {
        Date initTime = new Date();

        department.setCreateTime(initTime);
        department.setUpdateTime(initTime);

        departmentDao.insert(department);
    }

    public void edit(Department department) {
        department.setUpdateTime(new Date());
        departmentDao.update(department);
    }

    public Department findOne(Integer id) {
        return departmentDao.selectById(id);
    }

    public List<Department> findAll() {
        return departmentDao.selectList(null);
    }

    public List<Department> findByCategory(Department department) {
        return departmentDao.selectList(department);
    }

    public void remove(Integer id) {
        departmentDao.delete(id);
    }
}
