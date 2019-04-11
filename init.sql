-- 权限表 --
CREATE TABLE permission (
    pid int(11) not null AUTO_INCREMENT,
    name varchar(255) not null default '',
    url varchar(255) default '',
    PRIMARY key (pid)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

insert into permission values ('1', 'add', '');
insert into permission values ('2', 'delete', '');
insert into permission values ('3', 'edit', '');
insert into permission values ('4', 'query', '');

-- 用户表 --
CREATE table user (
    uid int(11) not null AUTO_INCREMENT,
    username varchar(255) not null default '',
    password varchar(255) not  null default '',
    PRIMARY key (uid)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

insert into user values ('1', 'admin', '123');
insert into user values ('2', 'demo', '123');

-- 角色表 --
CREATE TABLE role(
    rid int(11) not null AUTO_INCREMENT,
    rname varchar(255) not null default '',
    PRIMARY key (rid)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

insert into role values ('1', 'admin');
insert into role values ('2', 'customer');

-- 权限角色关系表 --
create table permission_role(
    rid int(11) not null ,
    pid int(11) not null ,
    key idx_rid (rid),
    key idx_pid (pid)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO permission_role VALUES ('1', '1');
INSERT INTO permission_role VALUES ('1', '2');
INSERT INTO permission_role VALUES ('1', '3');
INSERT INTO permission_role VALUES ('1', '4');
INSERT INTO permission_role VALUES ('2', '1');
INSERT INTO permission_role VALUES ('2', '4');

-- 用户角色关系表 --
create table user_role(
    rid int(11) not null ,
    pid int(11) not null ,
    key idx_uid (uid),
    key idx_pid (pid)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

insert into user_role values (1, 1);
insert into user_role values (2, 2);