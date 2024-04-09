package com.xrluo.day02.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xrluo.day02.domain.Dept;
import com.xrluo.day02.service.DeptService;
import com.xrluo.day02.mapper.DeptMapper;
import org.springframework.stereotype.Service;

/**
* @author K
* @description 针对表【dept(部门表)】的数据库操作Service实现
* @createDate 2024-04-09 17:42:43
*/
@Service
public class DeptServiceImpl extends ServiceImpl<DeptMapper, Dept>
    implements DeptService{

}




