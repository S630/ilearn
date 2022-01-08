
--oracle 常用函数
oracle数据库语法 select  from 必须同时在语句中。 没有明确from 表使用dual代替。
--取当前时间 
select  sysdate  from dual ; 

--取guid 
select  sys_guid()  guid  from dual ; 

--查看当前用户： 
SELECT  current_user FROM dual;

--查看所有用户；  DBA_USERS表需要有DBA的权限才能查询。暂时没有权限
SELECT * FROM DBA_USERS; 
SELECT * FROM ALL_USERS;  
SELECT * FROM USER_USERS;

--查看用户系统权限:  暂时没有DBA权限
SELECT * FROM DBA_SYS_PRIVS;
SELECT * FROM USER_SYS_PRIVS; 

--查看用户对象或角色权限:
SELECT * FROM DBA_TAB_PRIVS;
SELECT * FROM ALL_TAB_PRIVS;
SELECT * FROM USER_TAB_PRIVS; 

--查看所有角色:
SELECT * FROM DBA_ROLES; 

--查看用户或角色所拥有的角色:
SELECT * FROM DBA_ROLE_PRIVS;
SELECT * FROM USER_ROLE_PRIVS;

--查看所有表
SELECT * FROM dba_tables WHERE table_name LIKE 'SYS%';
--查看所有试图
SELECT * FROM dba_views WHERE view_name LIKE 'DBA_USERS_WITH_DEFPWD'

SELECT * FROM DBA_USERS_WITH_DEFPWD WHERE username ='SYSTEM';

--查看密码  现在不知道为什么查不了了 
SELECT name,password FROM sys.user$ WHERE name = 'SYSTEM'
