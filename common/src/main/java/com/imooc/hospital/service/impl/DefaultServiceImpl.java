package com.imooc.hospital.service.impl;

import com.imooc.hospital.dao.DefaultDao;
import com.imooc.hospital.dao.UserDao;
import com.imooc.hospital.entity.User;
import com.imooc.hospital.service.DefaultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("defaultService")
public class DefaultServiceImpl implements DefaultService {
    @Resource(name = "defaultDao")
    private DefaultDao defaultDao;
    @Autowired
    private UserDao userDao;

    public User login(String username, String password) {
        User user = defaultDao.selectByUsername(username);
        if(user==null) return null;
        if(user.getPassword().equals(password)) return user;
        return null;
    }
}
