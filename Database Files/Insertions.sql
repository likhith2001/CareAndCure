

/*
delete from Appointment
delete from Doctor
delete from Patient
delete from Department
delete from OtherStaff
delete from LoginTable
*/

USE DBProject
GO


INSERT INTO LoginTable(Email, Password, Type) VALUES ('admin@clinic.com' ,'admin' ,   3)


--DEPARTMENT INSERTION
insert into department values(1 , 'Cardiology' , 'We have the best heart specialists in town .Each one of them is very competent and experienced.')
insert into department values(2 , 'Orthopaedics' , 'Orthopedic surgeons use surgical means to treat musculoskeletal trauma, infections, tumors. We believe in the best.')
insert into department values(3 , 'Ears Nose Throat' , 'They are gentle. And are trained to handle kids as well as adults.')
insert into department values(4 , 'Physiotherapy ',' Physiotherapists work through physical therapies such as exercise, and manipulation of bones, joints and muscle tissues.' )
insert into department values(5 , 'Neurology', 'A medical speciality dealing with disorders of the nervous system. It deals with the diagnosis and treatment of all categories of disease.')



--LOGIN TABLE INSERTIION
INSERT INTO LoginTable(Email, Password, Type) VALUES('noor@gmail.com', 'noor', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('raghu@gmail.com', 'raghu', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('likhith@gmail.com', 'likhith',2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('sharon@gmail.com', 'sharon', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('nikhil@gmail.com', 'nikhil', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('koushik@gmail.com', 'koushik', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('chirag@gmail.com', 'chirag', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('sumanth@gmail.com', 'sumanth', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('yashwanth@gmail.com', 'yashwanth', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('preetham@gmail.com', 'preetham', 2)

INSERT INTO LoginTable(Email, Password, Type) VALUES('saiteja@gmail.com', 'saiteja', 1)
INSERT INTO LoginTable(Email, Password, Type) VALUES('ananth@gmail.com', 'ananth', 1)
INSERT INTO LoginTable(Email, Password, Type) VALUES('uday@gmail.com', 'uday', 1)



--DOCTOR INSERTIONS
DECLARE @ID INT
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'noor@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Noor', '156133213', 'Pune', '4-12-1996', 'M', 1, 2500, 30000, 4, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'raghu@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Raghu', '156133213', 'Bangalore', '12-12-1996', 'M', 1, 3000, 25000, 3.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'likhith@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Likhith', '156133213', 'Hyderabad', '12-12-1996', 'M', 1, 1500, 20000, 5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'sharon@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Sharon', '156133213', 'Vijaywada', '05-04-1990', 'M', 1, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'nikhil@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Nikhil', '156133213', 'Vizag', '05-04-1990', 'M', 2, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'koushik@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Koushik', '156133213', 'Tirumala', '05-04-1990', 'M', 2, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'chirag@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Chirag', '156133213', 'Mysore', '05-04-1990', 'M', 3, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'sumanth@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Sumanth', '156133213', 'Tumkur', '05-04-1990', 'M', 3, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'yashwanth@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Yashwanth', '156133213', 'Bangalore', '05-04-1990', 'M', 4, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'preetham@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Preetham', '156133213', 'Tirupati', '05-04-1990', 'M', 5, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)


--PATIENT INSERTIONS
DECLARE @P_ID INT
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='saiteja@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'Sai Teja', '61536516', 'Chennai', '4-4-1996', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='ananth@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'Ananth', '61536516', 'Mysore', '4-4-1996', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='uday@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'Uday', '61536516', 'Tirupati', '4-4-1996', 'M')


select * from OtherStaff

insert into OtherStaff values ('Jeevan', '03227561002','Tirupati, Lhr', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Hamsa', '03227561002','Hydrabad, Lhr', 'Sweeper', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Ramesh', '03227561002','Tirupati, Lhr', 'Security', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Girish', '03227561002','Bangalore, Lhr', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Kiran', '03227561002','Mysore, Lhr', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Suresh', '03227561002','Bangalore, Lhr', 'Guard', 'M', '05-04-1990', 'Matric',5000)






--Because I have inserted the date and time in a particular format in the appointment table and that format has to be maintained
--for proper working

/*
--APPOINTMENT INSERTIONS 
DECLARE @DOCTOR_ID INT
DECLARE @PATIENT_ID INT
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='farhan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='ABC@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 10:00:00', 3)
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='farhan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 12:00:00', 1)
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='hassaan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 16:00:00', 3)
*/

