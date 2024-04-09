CREATE TABLE `user`
(
    `id`            bigint(20)                                              NOT NULL AUTO_INCREMENT COMMENT '用户ID',
    `user_name`     varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL COMMENT '用户名',
    `password`      varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
    `depid`         bigint(20)                                              NULL DEFAULT NULL COMMENT '部门ID',
    `email`         varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
    `mobile`        varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL DEFAULT NULL COMMENT '联系电话',
    `status`        char(1) CHARACTER SET utf8 COLLATE utf8_general_ci      NOT NULL COMMENT '状态 0锁定 1有效',
    `create_time`   datetime(0)                                             NOT NULL COMMENT '创建时间',
    `modify_time`   datetime(0)                                             NULL DEFAULT NULL COMMENT '修改时间',
    `laslogin_time` datetime(0)                                             NULL DEFAULT NULL COMMENT '最近访问时间',
    `sex`           char(1) CHARACTER SET utf8 COLLATE utf8_general_ci      NULL DEFAULT NULL COMMENT '性别 0男 1女 2保密',
    `avatar`        varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
    `description`   varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '用户表'
  ROW_FORMAT = Dynamic;

INSERT INTO `user`
VALUES (1, 'BNTang', '$2a$10$gzhiUb1ldc1Rf3lka4k/WOoFKKGPepHSzJxzcPSN5/65SzkMdc.SK', 1, '303158131@qq.com',
        '17788888888', '1', '2019-06-14 20:39:22', '2019-07-19 10:18:36', '2019-08-02 15:57:00', '0', 'default.jpg',
        '我是帅比作者。');

CREATE TABLE `role`
(
    `id`          bigint(20)                                              NOT NULL AUTO_INCREMENT COMMENT '角色ID',
    `role_name`   varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL COMMENT '角色名称',
    `remark`      varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
    `create_time` datetime(0)                                             NOT NULL COMMENT '创建时间',
    `modify_time` datetime(0)                                             NULL DEFAULT NULL COMMENT '修改时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '角色表'
  ROW_FORMAT = Dynamic;

INSERT INTO `role`
VALUES (1, '管理员', '管理员', '2019-08-08 16:23:11', '2019-08-09 14:38:59');

CREATE TABLE `menu`
(
    `id`          bigint(20)                                              NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
    `parent_id`   bigint(20)                                              NOT NULL COMMENT '上级菜单ID',
    `menu_name`   varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL COMMENT '菜单/按钮名称',
    `path`        varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对应路由path',
    `component`   varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对应路由组件component',
    `perms`       varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL DEFAULT NULL COMMENT '权限标识',
    `icon`        varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL DEFAULT NULL COMMENT '图标',
    `type`        char(2) CHARACTER SET utf8 COLLATE utf8_general_ci      NOT NULL COMMENT '类型 0菜单 1按钮',
    `order_num`   double(20, 0)                                           NULL DEFAULT NULL COMMENT '排序',
    `create_time` datetime(0)                                             NOT NULL COMMENT '创建时间',
    `modify_time` datetime(0)                                             NULL DEFAULT NULL COMMENT '修改时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '菜单表'
  ROW_FORMAT = Dynamic;


INSERT INTO `menu`
VALUES (1, 0, '系统管理', '/system', 'Layout', NULL, 'el-icon-set-up', '0', 1, '2017-12-27 16:39:07',
        '2019-07-20 16:19:04');
INSERT INTO `menu`
VALUES (2, 1, '用户管理', '/system/user', 'bntang/system/user/Index', 'user:view', '', '0', 1, '2017-12-27 16:47:13',
        '2019-01-22 06:45:55');
INSERT INTO `menu`
VALUES (3, 2, '新增用户', '', '', 'user:add', NULL, '1', NULL, '2017-12-27 17:02:58', NULL);
INSERT INTO `menu`
VALUES (4, 2, '修改用户', '', '', 'user:update', NULL, '1', NULL, '2017-12-27 17:04:07', NULL);
INSERT INTO `menu`
VALUES (5, 2, '删除用户', '', '', 'user:delete', NULL, '1', NULL, '2017-12-27 17:04:58', NULL);


CREATE TABLE `user_role`
(
    `user_id` bigint(20) NOT NULL COMMENT '用户ID',
    `role_id` bigint(20) NOT NULL COMMENT '角色ID',
    unique user_role (user_id, role_id)
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '用户角色关联表'
  ROW_FORMAT = Dynamic;

INSERT INTO `user_role`
VALUES (1, 1);


CREATE TABLE `role_menu`
(
    `role_id` bigint(20) NOT NULL,
    `menu_id` bigint(20) NOT NULL,
    unique role_menu (role_id, menu_id)
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '角色菜单关联表'
  ROW_FORMAT = Dynamic;

INSERT INTO `role_menu`
VALUES (1, 1);
INSERT INTO `role_menu`
VALUES (1, 2);
INSERT INTO `role_menu`
VALUES (1, 3);
INSERT INTO `role_menu`
VALUES (1, 4);
INSERT INTO `role_menu`
VALUES (1, 5);

CREATE TABLE `dept`
(
    `id`          bigint(20)                                              NOT NULL AUTO_INCREMENT COMMENT '部门ID',
    `parent_id`   bigint(20)                                              NOT NULL COMMENT '上级部门ID',
    `dept_name`   varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
    `order_num`   double(20, 0)                                           NULL DEFAULT NULL COMMENT '排序',
    `create_time` datetime(0)                                             NULL DEFAULT NULL COMMENT '创建时间',
    `modify_time` datetime(0)                                             NULL DEFAULT NULL COMMENT '修改时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '部门表'
  ROW_FORMAT = Dynamic;
INSERT INTO `dept`
VALUES (1, 0, '开发部', 1, '2018-01-04 15:42:26', '2019-01-05 21:08:27');
