--- Creating tables for water-potability database
--create water table 1
create table waterdata1 (
id INT PRIMARY key,
	ph float,
	Hardness float,
	Solids float,
	Chloramines float,
	Sulfate float);

	--create water table 2
create table waterdata2 (
	id INT PRIMARY key REFERENCES waterdata1 (id),
	Conductivity float,
	Organic_carbon float,
	Trihalomethanes float,
	Turbidity float,
	Potability int)

select * from dbo.waterdata1;
select * from dbo.waterdata2;

select waterdata1.id,
waterdata1.ph,
waterdata1.Hardness,
waterdata1.Solids,
waterdata1.Chloramines,
waterdata1.Sulfate,
waterdata2.Conductivity,
waterdata2.Organic_carbon,
waterdata2.Trihalomethanes,
waterdata2.Turbidity,
waterdata2.Potability
INTO cleanwaterdata
FROM waterdata1
LEFT JOIN waterdata2
ON waterdata1.id = waterdata2.id;

select * from cleanwaterdata


