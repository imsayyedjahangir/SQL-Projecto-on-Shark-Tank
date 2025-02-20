create database sharktank
use sharktank

select * from table1
select * from table2
select * from table3

select count(*) from table1

select count(*) from INFORMATION_SCHEMA.COLUMNS

-- removing unwanted columns

alter table table1
drop column f33,f35,f36,f37,f38,f39,f40,f41,f42

-- changing name of the column

exec sp_rename 'table1.Ep# No#', 'ep', 'column'

-- total episodes

select count(ep) from table1


-- total pitches 

select count(distinct brand) from table1

--pitches converted

select count(deal) from table1
where deal not in('No Deal')

-or

select sum(a.deal_d) from
(select brand, case when [amount invested lakhs]>1 then 1
else 0 end as deal_d from table1)a



-- total male
select sum(male) from table1

--gender ratio
select sum(female)/sum(male) from table1

-- avg equity taken
 
 select avg([equity taken %]) average_equity_taken from table1

--highest deal taken

select max([amount invested lakhs]) from table1

-- startups having at least women
select count(*) from table1 where Female>0
or
select sum(e.fc) from
(select *, case when female>0 then 1 else 0 end as fc from table1) e

-- pitches converted having atleast ne women

select count(*) from table1 where [Amount Invested lakhs]>0 and Female>0
OR
select sum(b.af) from
(select case when e.female>0 then 1 else 0 end as af from(
select *, case when [Amount Invested lakhs]>0 then 1 else 0 end as AIL from table1
) e where e.AIL=1) b 

-- avg team members

select (sum(male)+sum(female))/count(ep) from table1


-- list highest to lowest age group

select [avg age], count([avg age]) total_pitches from table1 group by [avg age] 
order by  count([avg age]) desc



select * from table1








select * from table1




