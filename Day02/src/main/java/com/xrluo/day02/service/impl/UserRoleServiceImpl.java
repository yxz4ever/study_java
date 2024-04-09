package com.xrluo.day02.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xrluo.day02.domain.UserRole;
import com.xrluo.day02.service.UserRoleService;
import com.xrluo.day02.mapper.UserRoleMapper;
import org.springframework.stereotype.Service;

/**
* @author K
* @description 针对表【user_role(用户角色关联表)】的数据库操作Service实现
* @createDate 2024-04-09 17:42:43
*/
@Service
public class UserRoleServiceImpl extends ServiceImpl<UserRoleMapper, UserRole>
    implements UserRoleService{

}




