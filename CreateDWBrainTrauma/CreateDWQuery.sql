--Create database BrainTraumas_DW

----create table DimTraumaPatient
----(
----PatientID int primary key identity,
----PatientName varchar(50) not null,
----Gender varchar(6) not null,
----)

----insert into DimTraumaPatient(PatientName,Gender) values
----('Anne Hansen', 'Kvinde'),
----('Bo Hansen', 'Mand');

----create table DimECGRaw
----(
----RawECG_ID int primary key identity,
----ECGChannel_1 int not null,
----ECGChannel_2 int not null,
----ECGChannel_3 int not null,
----)


----insert into DimECGRaw(ECGChannel_1, ECGChannel_2, ECGChannel_3) values
----(50, 30, 10),
----(40, 25, 7);



----create table DimICPRaw
----(
----RawICP_ID int primary key identity,
----IntraCranialPressure int not null,
----)


----insert into DimICPRaw(IntraCranialPressure) values
----(60),
----(55);


----create table DimABPRaw
----(
----RawABP_ID int primary key identity,
----Systolic int not null,
----Diastolic int not null,
----Mean int not null,
----)


----insert into DimABPRaw(Systolic, Diastolic, Mean) values
----(120, 80, 110),
----(140, 101, 132);

----select Systolic from DimABPRaw

----create table DimTraumaDate
----(
----DateKey int primary key identity,
----DayTrauma varchar(10) not null,
----MonthTrauma varchar(10) not null,
----YearTrauma varchar (10) not null,
----)

----insert into DimTraumaDate(DayTrauma, MonthTrauma, YearTrauma)values
----('10','12','2017'),
----('12','06','2016');


----create table DimTraumaTime
----(
----TimeKey int primary key identity,
----HourTrauma varchar(10),
----MinuteTrauma varchar(10),
----SecondTrauma varchar(10),
----)


----insert into DimTraumaTime(HourTrauma, MinuteTrauma, SecondTrauma)values
----('10','07', '23'),
----('12','06', '45');

----create table FactPatientMeasurement
----(
----MeasurementID bigint primary key identity,
----MeasurementDate int,
----MeasurementTime int,
----Patient int,
----RawMeasurementECG int,
----RawMeasurementICP int,
----RawMeasurementABP int,
----TotalAmountOfMeasurements int,
----)



----alter table FactPatientMeasurement add constraint 
----FK_DateTrauma Foreign key (MeasurementDate)references DimTraumaDate(DateKey); 
----alter table FactPatientMeasurement add constraint 
----FK_TimeTrauma Foreign key (MeasurementTime)references DimTraumaTime(TimeKey); 
----alter table FactPatientMeasurement add constraint 
----FK_TraumaPatient Foreign key (Patient)references DimTraumaPatient(PatientID); 
----alter table FactPatientMeasurement add constraint 
----FK_RawMeasurementECG Foreign key (RawMeasurementECG)references DimECGRaw(RawECG_ID); 
----alter table FactPatientMeasurement add constraint 
----FK_RawMeasurementICP Foreign key (RawMeasurementICP)references DimICPRaw(RawICP_ID); 
----alter table FactPatientMeasurement add constraint 
----FK_RawMeasurementABP Foreign key (RawMeasurementABP)references DimABPRaw(RawABP_ID);
 

----insert into FactPatientMeasurement(MeasurementDate,MeasurementTime,Patient,RawMeasurementECG,RawMeasurementICP,RawMeasurementABP)values
----(1,1,1,1,1,1),
----(2,2,2,2,2,2);


