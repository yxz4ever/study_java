package com.xrluo.day02.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xrluo.day02.domain.Role;
import com.xrluo.day02.service.RoleService;
import com.xrluo.day02.mapper.RoleMapper;
import org.springframework.stereotype.Service;

/**
* @author K
* @description 针对表【role(角色表)】的数据库操作Service实现
* @createDate 2024-04-09 17:42:43
*/
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role>
    implements RoleService{

}




