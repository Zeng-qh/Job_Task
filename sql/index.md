---
title: Sql
date: 2020-06-01
# keys:
#  - '123456' 
publish: true
---
:::tip
记录日常工作任务
:::
![img]()

<!-- more -->

```sql 生成海关成品资料
-- use Demo
-- select * from Table_1

--select * from Table_2 


Use CHIYODA_Test


-- 海关成品资料
SELECT TOP (1000)
    *
FROM [CHIYODA_Test].[dbo].[CB_Goods]
where  BookCode=
 '8564358002' and Types=0
-- 成品：0，料件1

--'C520720A0217'

-- 通关手册  添加数据 判断审核过  并且 申报日期 不能为空
-- 判断 是否存在 BookCode
SELECT CreateDate,DecnDate, Status, BookCode--, *
from
    [CHIYODA_Test].[dbo].[CB_Book] order by CreateDate asc
-- WHERE  DecnDate is not NULL and Status='已审核'
--BookCode='8564358100'
-- 通关手册
-- 添加之后查找上一条数据  
-- 拿到上一条Code  去海关成品资料 同步到 当前所有数据


select top 1
    BookCode
from [CHIYODA_Test].[dbo].[CB_Book]
where BookCode not in (select top 1
    BookCode
from [CHIYODA_Test].[dbo].[CB_Book]
order by CreateDate desc)
order by CreateDate desc
-- 排除第一行 数据  根据时间 排序 进行操作


-- 备份表
-- SELECT * INTO Copy_CB_Goods FROM [CHIYODA_Test].[dbo].[CB_Goods]
SELECT * from   [CHIYODA_Test].[dbo].[Copy_CB_Goods]

-- 同步
-- insert into Copy_CB_Goods (UName,Usex,address)    -- Table_2 是目标 数据库
--select Name,(sex+2),address from [dbo].[Table_1] as A
--where not exists(select UName from Table_2 where A.Name=UName)  -- 排除 已经有的数据  添加到 Table1 之中
-- 首先 查询表A 的数据  表A 中的数据 和表B 中的数据做对比  
--若表A 中的数据表B 没有 同步到表B  有就不同步


-- '8564358002'


select count(CB_GoodsCode) from CB_Goods where bookCode='85643581110'-- count(CB_GoodsCode)

-- CB_GoodsCode
-- 8544492900


-- 审核过的 
-- 申报日期
```

```sql  本地 
use Demo
select * from [Demo].[dbo].[Table_1]
 select * from [Demo].[dbo].[new_table_name]

 -- SELECT * INTO new_table_name FROM [Demo].[dbo].[Table_1]


 IF EXISTS ( SELECT * FROM Hr_Maker WHERE MkCode = 'test1' 
AND (( SELECT ReqDate FROM GLMkCostReq WHERE MkCode = 'test1' ) + PayLeadDays ) > '2020-05-30' ) BEGIN
	SELECT
		0 
	END ELSE BEGIN
	SELECT
	1 
END
```