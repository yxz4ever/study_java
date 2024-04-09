package com.xrluo.day02.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xrluo.day02.domain.RoleMenu;
import com.xrluo.day02.service.RoleMenuService;
import com.xrluo.day02.mapper.RoleMenuMapper;
import org.springframework.stereotype.Service;

/**
* @author K
* @description 针对表【role_menu(角色菜单关联表)】的数据库操作Service实现
* @createDate 2024-04-09 17:42:43
*/
@Service
public class RoleMenuServiceImpl extends ServiceImpl<RoleMenuMapper, RoleMenu>
    implements RoleMenuService{

}




