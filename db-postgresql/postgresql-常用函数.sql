
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