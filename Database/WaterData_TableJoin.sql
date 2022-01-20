create table water_data1 (
id INT PRIMARY key,
	ph float,
	Hardness float,
	Solids float,
	Chloramines float,
	Sulfate float);

create table water_data2 (
	id INT PRIMARY key REFERENCES water_data1 (id),
	Conductivity float,
	Organic_carbon float,
	Trihalomethanes float,
	Turbidity float,
	Potability int)

select * from dbo.water_data1;
select * from dbo.water_data2;

select water_data1.id,
water_data1.ph,
water_data1.Hardness,
water_data1.Solids,
water_data1.Chloramines,
water_data1.Sulfate,
water_data2.Conductivity,
water_data2.Organic_carbon,
water_data2.Trihalomethanes,
water_data2.Turbidity,
water_data2.Potability
INTO joinedwaterdata
FROM water_data1
LEFT JOIN water_data2
ON water_data1.id = water_data2.id;

select * from joinedwaterdata