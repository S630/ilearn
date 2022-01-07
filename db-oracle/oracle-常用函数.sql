
--oracle 常用函数
oracle数据库语法 select  from 必须同时在语句中。 没有明确from 表使用dual代替。
--取当前时间 
select  sysdate  from dual ; 

--取guid 
select  sys_guid()  guid  from dual ;