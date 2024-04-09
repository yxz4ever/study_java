package com.xrluo.day02.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xrluo.day02.domain.Menu;
import com.xrluo.day02.service.MenuService;
import com.xrluo.day02.mapper.MenuMapper;
import org.springframework.stereotype.Service;

/**
* @author K
* @description 针对表【menu(菜单表)】的数据库操作Service实现
* @createDate 2024-04-09 17:42:43
*/
@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu>
    implements MenuService{

}




