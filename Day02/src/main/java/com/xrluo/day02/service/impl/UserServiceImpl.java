package com.xrluo.day02.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xrluo.day02.domain.User;
import com.xrluo.day02.service.UserService;
import com.xrluo.day02.mapper.UserMapper;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

/**
* @author K
* @description 针对表【user】的数据库操作Service实现
* @createDate 2024-04-07 10:23:42
*/
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User>  implements UserService{
}




