---
title: Temp
date: 2020-06-01
# keys:
#  - '123456' 
publish: true
---
:::tip
记录日常工作任务
:::
![img](https://dss1.baidu.com/70cFfyinKgQFm2e88IuM_a/forum/pic/item/adaf2edda3cc7cd9684f8ce83e01213fb80e91a5.jpg)

<!-- more -->
```sql
if (exists(
SELECT  dateadd(dd,a.PayLeadDays,b.WDDate), b.WDDate,* FROM Hr_CraftsMan a
inner join   GLCraftsWithdraw b  
on a.HCMCode=b.HCMCode  
where CWD= '[@提现单号]'  dateadd(dd,a.PayLeadDays,(b.WDDate-1)) <   '[@提现日期]'  
))
begin
SELECT  0 
end
else
begin
SELECT  1
end
```



保存时判断是创客申请时间+支付提前天数是否大于支付时间



```sql

declare @PayLeadDays DATETIME
select  @PayLeadDays=dateadd(dd,a.PayLeadDays,(b.WDDate-1)) from Hr_CraftsMan a 
left join GLCraftsWithdraw b on a.HCMCode=b.HCMCode where b.CWD=  '[@申请单号]'  
   if((@PayLeadDays)>   '[@支付日期]' )
    begin
     select 1 
    end

--	SELECT  dateadd(dd,a.PayLeadDays,b.WDDate), b.WDDate,* FROM Hr_CraftsMan a  -- 基础表 获取 到支付天数
--inner join   GLCraftsWithdraw b  -- 申请表  获取到 申请日期    得到延迟日期
--on a.HCMCode=b.HCMCode    -- 创客 
--where a.HCMCode= '[@创客]'  and  -- 创客 code
--b.CWD=  '[@申请单号]'  --  申请 单据号 
--and dateadd(dd,a.PayLeadDays,(b.WDDate-1)) <   '[@支付日期]'
```


申报数量


查询 
Sale_LinePlanDetail


社内品番==规格型号：	


where 客户纳期=1年内



```C#

  //            // 获取到当前的数据   手册编号
                //            //判断   当前数据 
                //            //查询 这个型号  一年的 销售数据 汇总

                //            // 同步数据  
                //            // 获取到上一条数据
                //            FlagValue = "123456";
                //            try
                //            {
                //                if (string.IsNullOrEmpty(FlagValue))// 并且 申报日期 不能为空
                //                {
                //                    throw new Exception("请选择需生成的成品资料！");
                //                }
                //                else
                //                {
                //                    // -- 排除第一行 数据  根据创建时间 排序 进行操作
                //                    string IsF = string.Format(@"
                //                select top 1 
                //                    BookCode
                //                from[CHIYODA_Test].[dbo].[CB_Book]
                //                where BookCode not in (select top 1
                //                    BookCode
                //                from[CHIYODA_Test].[dbo].[CB_Book]
                //                order by CreateDate desc)
                //                order by CreateDate desc
                //                ");
                //                    string _Goods = DbContext.Execute.ExecuteScalarToString(IsF);  // 获取到上一个 手册编号


                //                    // 获取到数量
                //                    string QtyDecn = "";


                //                    // 同步
                //                    string str = string.Format(@"
                //                insert into Copy_CB_Goods (CB_GoodsName,CB_GoodsCode,CB_Model,BookCode,CB_Unit,QtyDecn,PreDecn,AmtDecn,Types,
                //                Remark,CreatorCode,CreatorName,CreateDate,Status,AuditorCode,AuditorName,AuditDate,
                //                CB_StdUnit,CB_GoodsId,HSITEM,IsFreeze,FreezeCode,FreezeName,FreezeDate )  
                //                select 
                //                CB_GoodsName,CB_GoodsCode,CB_Model,'{0}',CB_Unit,QtyDecn,PreDecn,AmtDecn,Types,
                //                Remark,CreatorCode,CreatorName,CreateDate,Status,AuditorCode,AuditorName,AuditDate,
                //                CB_StdUnit,CB_GoodsId,HSITEM,IsFreeze,FreezeCode,FreezeName,FreezeDate
                //                from Copy_CB_Goods as A where BookCode='{1}' and not exists(select BookCode from Copy_CB_Goods as B where BookCode='{0}')
                //                ", FlagValue, _Goods);


                //                    // 查看影响行数
                //                    if (DbContext.Execute.ExecuteSql(str) > 0)
                //                    {
                //                        // 提示成功

                //                    }
                //                    else
                //                    {
                //                        // 提示已同步
                //                    }
                //                }
```



```sql
drop table  tb  --删表
truncate table Table_2  -- truncate 比 delete速度快，且使用的系统和事务日志资源少
delete from Table_2 -- 删除表中数据
```

```sql   数据同步 过来 本地测试
 insert into Table_1 values('E','1','上海' ),('F','2','黑龙江')

select * from Table_1

select * from Table_2 

delete  Table_2 

insert into Table_2 (UName,Usex,address)    -- Table_2 是目标 数据库
select Name,(sex+2),address from [dbo].[Table_1] as A
where not exists(select UName from Table_2 where A.Name=UName)  -- 排除 已经有的数据  添加到 Table1 之中
-- 首先 查询表A 的数据  表A 中的数据 和表B 中的数据做对比  
--若表A 中的数据表B 没有 同步到表B  有就不同步

-- A.Name not in (select UName from Table_2 where A.Name=UName)   

 -- table_1 相当于A表  table_2 相当于B表 字段类型对应


 insert into Table_1 values('E','1','上海' ),('F','2','黑龙江')
```

``` sql 查找上一比数据
根据时间 排序 

select top 1 *  from Table_1 where ID not in (select top 1 ID from Table_1 order by ID asc) order by ID asc
-- 排除第一行 数据  根据时间 排序 进行操作


-- select * from Table_1 where ID=(select MAX(ID) from Table_1 where ID<6)


```