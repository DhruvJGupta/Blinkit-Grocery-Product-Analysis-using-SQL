#1
SELECT * FROM blinkit b ;
 
#2
SELECT Item_Identifier from blinkit b ;

#3
SELECT COUNT(Item_Identifier)  from blinkit b ;

#4
SELECT MAX(item_weight) from blinkit b ;

#5
SELECT MIN(item_weight) from blinkit b ;

#6
SELECT AVG(item_weight)  from blinkit b ;

#7
SELECT COUNT(Item_Fat_Content) from blinkit b WHERE Item_Fat_Content='Low Fat';

#8
SELECT COUNT(Item_Fat_Content) from blinkit b WHERE Item_Fat_Content='Regular';

#9
SELECT MAX(Item_MRP) from blinkit b ;

#10
SELECT MIN(Item_MRP) from blinkit b;

#11
SELECT Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP 
from blinkit b 
WHERE Item_MRP>200;

#12
SELECT MAX(Item_MRP) from blinkit b WHERE Item_Fat_Content='Low Fat';

#13
SELECT MIN(Item_MRP) from blinkit b WHERE Item_Fat_Content='Low Fat';

#14
SELECT * from blinkit b WHERE Item_MRP BETWEEN 50 AND 100;

#15
SELECT DISTINCT Item_Fat_Content from blinkit b ;

#16
SELECT DISTINCT Item_Type from blinkit b ;

#17
SELECT * from blinkit b 
order by Item_MRP DESC ;

#18
SELECT * FROM blinkit b 
order by Item_Outlet_Sales ASC;

#19
SELECT * from blinkit b 
order by Item_Type ASC;

#20
SELECT * from blinkit b 
WHERE item_type in('dairy','Meat');

#21
SELECT DISTINCT Outlet_Size from blinkit b ;

#22
SELECT DISTINCT Outlet_Location_Type from blinkit b ;

#23
SELECT DISTINCT Outlet_Type from blinkit b ;

#24
SELECT Item_Type,COUNT(Item_Identifier) as no_item
from blinkit b 
group by Item_Type 
order by no_item DESC;

#25
SELECT Outlet_Size,COUNT(Item_Identifier) as no_item
from blinkit b 
group by Outlet_Size 
order by no_item ASC;

#26
SELECT Outlet_Type,COUNT(Item_Identifier) as no_item
from blinkit b 
group by Outlet_Type 
order by no_item DESC;

#27
SELECT Outlet_Location_Type,COUNT(Item_Identifier) as no_item
from blinkit b 
group by Outlet_Location_Type 
order by no_item DESC;

#28
SELECT Item_Type,MAX(Item_MRP) as max_mrp
from blinkit b 
group by Item_Type;

#29
SELECT Item_Type,MIN(Item_MRP) as min_mrp
from blinkit b 
group by Item_Type;

#30
SELECT Outlet_Establishment_Year,MIN(Item_MRP) as min_mrp
from blinkit b 
group by Outlet_Establishment_Year
order by min_mrp DESC ;

#31
SELECT Outlet_Establishment_Year,MAX(Item_MRP) as max_mrp
from blinkit b 
group by Outlet_Establishment_Year
order by max_mrp DESC ;

#32
SELECT Outlet_Establishment_Year,AVG(Item_MRP) as avg_mrp
from blinkit b 
group by Outlet_Establishment_Year
order by avg_mrp DESC ;

#33
SELECT Outlet_Type,AVG(Item_MRP) as avg_mrp
from blinkit b 
group by Outlet_Type
order by avg_mrp ASC ;

#34
SELECT Outlet_Type,MAX(Item_MRP) as avg_mrp
from blinkit b 
group by Outlet_Type;

#35
SELECT Item_Type,MAX(Item_Weight) 
from blinkit b 
group by Item_Type;

#36
SELECT Outlet_Establishment_Year,MAX(Item_Weight)
from blinkit b 
group by Outlet_Establishment_Year;

#37
SELECT Outlet_Type,MIN(Item_Weight)
from blinkit b 
group by Outlet_Type;

#38
SELECT Outlet_Location_Type,AVG(Item_Weight) as avg_weight
from blinkit b 
group by Outlet_Location_Type
order  by avg_weight DESC;

#39
SELECT Item_Type,MAX(Item_Outlet_Sales)
from blinkit b 
group  by Item_Type;

#40
SELECT Item_Type,MIN(Item_Outlet_Sales)
from blinkit b 
group  by Item_Type;

#41
SELECT Outlet_Establishment_Year,MIN(Item_Outlet_Sales) 
from blinkit b 
group by Outlet_Establishment_Year;

#42
SELECT Outlet_Establishment_Year,MAX(Item_Outlet_Sales) as max_Item_Outlet_Sales
from blinkit b 
group by Outlet_Establishment_Year
ORDER  by max_Item_Outlet_Sales DESC;

#43
SELECT Outlet_Size,AVG(Item_Outlet_Sales) as max_Item_Outlet_Sales
from blinkit b 
group by Outlet_Size
ORDER  by max_Item_Outlet_Sales DESC;

#44
SELECT Outlet_Type,AVG(Item_Outlet_Sales)
from blinkit b 
group by Outlet_Type;

#45
SELECT Outlet_Type,MAX(Item_Outlet_Sales)
from blinkit b 
group by Outlet_Type;

#46
SELECT Item_Type,sum(Item_Outlet_Sales)
from blinkit b 
group by Item_Type;

#47
SELECT Item_Fat_Content,sum(Item_Outlet_Sales)
from blinkit b 
group by Item_Fat_Content;

#48
SELECT Item_Type,MAX(Item_Visibility)
from blinkit b 
group by Item_Type;

#49
SELECT Item_Type,MIN(Item_Visibility)
from blinkit b 
group by Item_Type;

#50
SELECT Item_Type,sum(Item_Outlet_Sales)
from blinkit b WHERE Outlet_Location_Type="Tier 1"
group by Item_Type;

#51
SELECT Item_Type,sum(Item_Outlet_Sales)
from blinkit b WHERE Item_Fat_Content in ('Low Fat','LF')
group by Item_Type;


























