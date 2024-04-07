package com.xrluo.day02.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.xrluo.day02.domain.User;
import com.xrluo.day02.service.UserService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class IndexController {
    @Resource
    private UserService userService;
    @RequestMapping("/index")
    public User index(){
        LambdaQueryWrapper<User> userLambdaQueryWrapper = new LambdaQueryWrapper<>();
        userLambdaQueryWrapper.eq(User::getUsername,"xrluo");
        return userService.getOne(userLambdaQueryWrapper);

    }
}
