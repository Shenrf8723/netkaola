package com.dhnsoft.service.admin;

import com.dhnsoft.mapper.adminMapper.AdminMapper;
import com.dhnsoft.po.AdminIstrator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminMapper adminMapper;


    @Override
    public List<AdminIstrator> findAdminMsg(AdminIstrator adminIstrator){
        return adminMapper.findAdminMsg(adminIstrator);
    }
}
