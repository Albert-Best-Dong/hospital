package com.imooc.hospital.service;

import com.imooc.hospital.entity.User;

public interface DefaultService {
    User login(String username, String password);
}
