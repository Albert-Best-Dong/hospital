package com.imooc.hospital.dao;

import com.imooc.hospital.entity.User;
import org.springframework.stereotype.Repository;

@Repository("defaultDao")
public interface DefaultDao {
    User selectByUsername(String username);
}
