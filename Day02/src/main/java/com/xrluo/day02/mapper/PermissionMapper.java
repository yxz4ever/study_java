package com.xrluo.day02.mapper;

import com.xrluo.day02.domain.Permission;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
* @author K
* @description 针对表【permission】的数据库操作Mapper
* @createDate 2024-04-07 10:23:42
* @Entity com.xrluo.day02.domain.Permission
*/
@Mapper
public interface PermissionMapper extends BaseMapper<Permission> {

}




