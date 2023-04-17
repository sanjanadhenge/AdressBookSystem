--UC1
Create Database AddressBook_Servive_DB;
Use AddressBook_Servive_DB;

--UC2
Create table RecordsDB
(
ID int Primary Key identity(1,1),
FirstName VarChar(10),
LastName  VarChar(10),
Adresss  VarChar(30),
City  VarChar(20),
State  VarChar(20),
Zip  VarChar(10),
Phone VarChar(10),
Email  VarChar(30)
);

--UC3
Insert into RecordsDB(FirstName,LastName,Adresss,City,State,Zip,Phone,Email) values('A','B','1461 A Ward','Kolhapur','MH','415265','1266455','A@gmail.com');
Insert into RecordsDB(FirstName,LastName,Adresss,City,State,Zip,Phone,Email) values('C','D','1462 A Ward','Pune','abc','415275','9897463','B@gmail.com');
Insert into RecordsDB(FirstName,LastName,Adresss,City,State,Zip,Phone,Email) values('E','F','1463 A Ward','Nashik','pqr','415265','789564','C@gmail.com');
Insert into RecordsDB(FirstName,LastName,Adresss,City,State,Zip,Phone,Email) values('G','H','1464 A Ward','Nagpur','MH','415765','9586147','D@gmail.com');
Insert into RecordsDB(FirstName,LastName,Adresss,City,State,Zip,Phone,Email) values('I','J','1465 A Ward','Mumbai','MH','515265','124655','E@gmail.com');
Insert into RecordsDB(FirstName,LastName,Adresss,City,State,Zip,Phone,Email) values('K','L','1466 A Ward','Nanded','abc','415275','9298455','F@gmail.com');
Insert into RecordsDB(FirstName,LastName,Adresss,City,State,Zip,Phone,Email) values('M','N','1467 A Ward','Raygad','MH','418265','8984565','G@gmail.com');
Insert into RecordsDB(FirstName,LastName,Adresss,City,State,Zip,Phone,Email) values('O','P','1468 A Ward','Kankavli','Keral','425265','8298455','H@gmail.com');
Insert into RecordsDB(FirstName,LastName,Adresss,City,State,Zip,Phone,Email) values('Q','R','1469 A Ward','Rantnagiri','MH','415269','798455','I@gmail.com');

--UC4
select * from RecordsDB;
Update RecordsDB set FirstName='Sanjana'where FirstName = 'A';
Update RecordsDB set LastName='Dhenge'where LastName = 'B';
select * from RecordsDB;

--UC5
Delete from RecordsDB where ID=9;
select * from RecordsDB;

--UC6
Select * from RecordsDB where City='Kolhapur';
Select * from RecordsDB where State='MH';

--UC7
Select COUNT(*) from RecordsDB where City = 'Kolhapur' group by City;
Select COUNT(*) from RecordsDB where State='MH' group by State;

--UC8
Update RecordsDB set City='Kolhapur'where FirstName = 'C';
Update RecordsDB set City='Kolhapur'where FirstName = 'G';
Update RecordsDB set City='Kolhapur'where FirstName = 'K';
Select * from RecordsDB where City = 'Kolhapur' Order by FirstName ;

--UC9
Alter table RecordsDB Add Type VarChar(20);
Update RecordsDB set Type='Profession'where FirstName = 'Sanjana';
Update RecordsDB set Type='Family'where FirstName = 'C';
Update RecordsDB set Type='Friends'where FirstName = 'E';
Update RecordsDB set Type='Profession'where FirstName = 'G';
Update RecordsDB set Type='Profession'where FirstName = 'I';
Update RecordsDB set Type='Family'where FirstName = 'K';
Update RecordsDB set Type='Friends'where FirstName = 'M';
Update RecordsDB set Type='Family'where FirstName = 'O';

--UC10
Select COUNT(*) from RecordsDB where Type='Profession' group by Type;
Select COUNT(*) from RecordsDB where Type='Family' group by Type;
Select COUNT(*) from RecordsDB where Type='Friends' group by Type;

--UC11
Insert into RecordsDB(FirstName,LastName,Adresss,City,State,Zip,Phone,Email,Type) values('Radha','Patil','1461 B Ward','Kolhapur','MH','415265','1266455','A@gmail.com','Friends');
Insert into RecordsDB(FirstName,LastName,Adresss,City,State,Zip,Phone,Email,Type) values('Radha','Patil','1461 B Ward','Kolhapur','MH','415265','1266455','A@gmail.com','Family');

--UC12
Alter table RecordsDB drop column Type;

Create table Type
(
ID int Primary Key identity(1,1),
TypeName Varchar(20),
PersonID int Foreign Key REFERENCES RecordsDB(ID)
);
Insert into Type(TypeName,PersonID) Values('Friends','1');
Insert into Type(TypeName,PersonID) Values('Family','1');
select * from Type;

--UC13
select * from RecordsDB;