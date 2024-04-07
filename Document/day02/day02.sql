create table menu
(
    menu_id        int auto_increment
        primary key,
    menu_name      varchar(50)  not null,
    url            varchar(100) not null,
    parent_menu_id int          null,
    constraint menu_ibfk_1
        foreign key (parent_menu_id) references menu (menu_id)
);

create index parent_menu_id
    on menu (parent_menu_id);

create table permission
(
    permission_id   int auto_increment
        primary key,
    permission_name varchar(50) not null,
    constraint permission_name
        unique (permission_name)
);

create table role
(
    role_id   int auto_increment
        primary key,
    role_name varchar(50) not null,
    constraint role_name
        unique (role_name)
);

create table role_menu
(
    role_id int not null,
    menu_id int not null,
    primary key (role_id, menu_id),
    constraint role_menu_ibfk_1
        foreign key (role_id) references role (role_id),
    constraint role_menu_ibfk_2
        foreign key (menu_id) references menu (menu_id)
);

create index menu_id
    on role_menu (menu_id);

create table role_permission
(
    role_id       int not null,
    permission_id int not null,
    primary key (role_id, permission_id),
    constraint role_permission_ibfk_1
        foreign key (role_id) references role (role_id),
    constraint role_permission_ibfk_2
        foreign key (permission_id) references permission (permission_id)
);

create index permission_id
    on role_permission (permission_id);

create table user
(
    user_id  int auto_increment
        primary key,
    username varchar(50)  not null,
    password varchar(100) not null,
    constraint username
        unique (username)
);

create table user_role
(
    user_id int not null,
    role_id int not null,
    primary key (user_id, role_id),
    constraint user_role_ibfk_1
        foreign key (user_id) references user (user_id),
    constraint user_role_ibfk_2
        foreign key (role_id) references role (role_id)
);

create index role_id
    on user_role (role_id);

