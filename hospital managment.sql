create database Hospital_count_Bangladesh

create table Hospital_info (
Sl_No	int primary key,
Organization_Name varchar(100),	
Division	varchar(15),
District	varchar(15),
Upazila	    varchar(15),
No_of_Bed   int

)

select * 
from hospital_info
 
--count

select count(*) from hospital_info

--groupby

select count(organization_name),District
from hospital_info
group by District

select count(organization_name),Division
from hospital_info
group by Division

select * from hospital_info
where No_of_Bed <=400
order by Sl_NO Desc

select Organization_name
from hospital_info
where No_of_Bed =  (
select No_of_Bed 
from hospital_info
where Upazila = 'teknaf')







