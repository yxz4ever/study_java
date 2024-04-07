package com.xrluo.day02.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xrluo.day02.domain.Permission;
import com.xrluo.day02.service.PermissionService;
import com.xrluo.day02.mapper.PermissionMapper;
import org.springframework.stereotype.Service;

/**
* @author K
* @description 针对表【permission】的数据库操作Service实现
* @createDate 2024-04-07 10:23:42
*/
@Service
public class PermissionServiceImpl extends ServiceImpl<PermissionMapper, Permission>
    implements PermissionService{

}




