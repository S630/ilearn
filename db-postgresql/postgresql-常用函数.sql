
--db-postgresql 
--postgresql  常用函数

--第一个sql  打印Hello world 
select 'hello world' title 

--截取字符串 可以使用substr函数 和 substring函数。
--截取左侧两位 位置从1开始， 从1开始，向后2个长度。       开始位置从开始的话，结果会少以一位。
select substr('abcdefg',1,2) str1,substr('abcdefg',0,2) str 

--截取左侧两位   1开始的位置。 3是从开始为向后的偏移量。
select substring('abcdefg' from 1 for 3) str
--截取右侧两位  利用POSIX 正则表达式。正则表达式中。表示一个字符。$表示从结尾匹配。
select substring('abcdefg' from '..$') str1

--日期函数
--当前日期
select current_date dd,current_time tt, current_timestamp ct ,clock_timestamp() ctt ,now() now

--取日期中的天。date_part(text, timestamp)函数
select  date_part('year', current_timestamp) y,date_part('month', current_timestamp) m,date_part('day', current_timestamp) d 

--取日期中的时分秒 
select  date_part('hour', current_timestamp) y,date_part('m', current_timestamp) m,date_part('s', current_timestamp) d 

--字符串转日期类型 date,timestamp,time
select date '2022-01-14' dd,timestamp '2022-01-14 17:45:34' dt,time '10:30' t1,time'14:22' t2 

--数字型转日期类型   --make_date(year int, month int, day int)  --make_time(hour int, min int, sec double precision)
select make_date(2022, 1, 15) d1 ,make_time(9, 22, 33) t1  --2022年1月15日 9点22分33秒

--日期类型四舍五入 
select current_timestamp t0
		,date_trunc('year', current_timestamp) t1
	  ,date_trunc('month', current_timestamp) t2
	  ,date_trunc('day', current_timestamp) t3
	  ,date_trunc('hour', current_timestamp) t4
	  ,date_trunc('minute', current_timestamp) t5
	  ,date_trunc('second', current_timestamp) t6

--两个日期的差值。  大的日期 减去 小的日期。
select  current_date  - date '2022-01-14' as dt1;
select  date '2022-01-15'  - date '2022-01-15' as dt2;
select  date '2022-01-15'  - date '2022-01-14' as dt2;
select  date '2022-02-15'  - date '2022-01-14' as dt3;
select  date '2021-12-31'  - date '2021-01-01' as dt4;
select  date '2020-12-31'  - date '2020-01-01' as dt5;
select  date '2021-12-31'  - date '2020-01-01' as dt6;
select  timestamp '2022-01-14 03:00'  - timestamp '2022-01-14 02:00' as tt1;
select  timestamp '2022-01-14 03:20'  - timestamp '2022-01-14 02:05' as tt2;
select  timestamp '2022-01-14 15:00'  - timestamp '2022-01-14 02:00' as tt3;
select  timestamp '2022-01-15 03:00'  - timestamp '2022-01-14 02:00' as tt4;
select  timestamp '2022-01-15 03:00'  - timestamp '2022-01-10 02:00' as tt5;
select  timestamp '2022-01-15 03:00'  - timestamp '2022-01-10 02:00' as tt6;
select  timestamp '2023-01-15 03:00'  - timestamp '2022-01-10 02:00' as tt7;

--计算月初/月末 
select current_date,date_trunc('month',current_date) as monthstart , date_trunc('month',current_date + interval '1 month') - interval '1 day' as monthend