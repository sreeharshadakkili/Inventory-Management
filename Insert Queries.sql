INSERT INTO Inventory
 VALUES 
(001,'Diced Tomatos','Food',120,'2023-05-15 11:00:00','120 Pounds','2023-12-01','Greater Boston Food',1001),
(002,'Sliced Carrrots','Food',105,'2023-05-15 11:00:00','105 Pounds','2023-12-01','Greater Boston Food',1001),
(003,'Red Kidney Beans','Food',150,'2023-05-15 11:00:00','150 Pounds','2023-9-01','Greater Boston Food',1001),
(004,'Corn','Food',120,'2023-05-15 11:00:00','120 Pounds','2023-12-01','Greater Boston Food',1001),
(005,'Body Wash','Toiletries',140,'2023-05-15 11:00:00','140 Pounds','2024-12-01','Trader Joes',1001),
(006,'White Rice','Food',110,'2023-05-15 11:00:00','110 Pounds','2024-02-01','Greater Boston Food',1001),
(007,'Brown Rice','Food',105,'2023-05-15 11:00:00','105 Pounds','2024-01-01','Greater Boston Food',1001),
(008,'Peanut Butter','Food',150,'2023-05-15 11:00:00','75 Pounds','2023-08-01','Trader Joes',1001),
(009,'Canned Chicken','Food',100,'2023-05-15 11:00:00','50 Pounds','2024-04-01','Greater Boston Food',1001),
(010,'Canned Tuna','Food',120,'2023-05-15 11:00:00','40 Pounds','2023-12-01','Greater Boston Food',1001),
(011,'Toothpaste','Toiletries',120,'2023-05-15 11:00:00','60 Pounds','2024-12-01','Amazon',1001);



INSERT INTO mydb.Order
 VALUES
(1,'2023-05-08 10:30:00', 'Diced Tomato, White Rice, Toothpaste',1,1001001,1002),
(2,'2023-05-08 10:30:00', 'Canned Chicken, White Rice, Body Wash',1,1001002,1002),
(3,'2023-05-08 10:30:00', 'Peanut Butter, Red Kidney Beans, Toothpaste',1,1001003,1002),
(4,'2023-05-08 10:30:00', 'Sliced Carrots, White Rice, Body Wash',1,1001004,1007),
(5,'2023-05-08 10:30:00', 'Corn, White Rice, Toothphaste',1,1001005,1002),
(6,'2023-05-08 10:30:00', 'Peanut Butter, White Rice, Body Wash',1,1001006,1005),
(7,'2023-05-08 10:30:00', 'Peanut Butter, Red Kidney Beans, Toothpaste',1,1001007,1002),
(8,'2023-05-08 10:30:00', 'Brown Rice, Brown Rice, Toothpaste',1,1001008,1004),
(9,'2023-05-08 10:30:00', 'Canned Tuna, Red Kidney Beans, Body Wash',1,1001009,1006),
(10,'2023-05-08 10:30:00', 'Canned Chicken, Brown Rice, Toothpaste',1,1001010,1002);

INSERT INTO mydb.Staff
VALUES
(1001,'MR Beast','Full-Time','Monday-Friday',123456789, 'mrbeast@gmail.com'),
(1002,'David Dobrick','Full-Time','Monday-Friday',123456799, 'dobrick@gmail.com'),
(1003,'Allie A','Full-Time','Monday-Friday',123456999, 'allie@gmail.com'),
(1004,'Logan Paul','Part-Time','Monday-Wednesday',123456789, 'logan@gmail.com'),
(1005,'Bts','Part-Time','Monday-Tuesday',123456788, 'bts@gmail.com'),
(1006,'Mohak','Part-Time','Tuesday-Wednesday',123446789, 'mohak@gmail.com'),
(1007,'Vidya Vox','Part-Time','Tuesday-Thursday',123457789, 'vidya@gmail.com'),
(1008,'Prajakta Koli','Full-Time','Monday-Friday',133456789, 'koli@gmail.com'),
(1009,'Jenna Marbles','Part-Time','Thursday-Friday',1233356789, 'jenna@gmail.com'),
(1010,'Kids Diana','Part-Time','Wednesday-Friday',123444789, 'diana@gmail.com');

INSERT INTO mydb.Storage
VALUES
(001, 'CC-1','Campus Center 2nd Floor', 'Toothpaste',1001),
(002, 'CC-2','Campus Center 2nd Floor', 'Peanut Butter',1002),
(003, 'CC-3','Campus Center 2nd Floor', 'Null',1001),
(004, 'CC-4','Campus Center 2nd Floor', 'Null',1001),
(005, 'CC-5','Campus Center 2nd Floor', 'Null',1001),
(006, 'UL-1','Campus Center Upper Level', 'Brown Rice',1001),
(008, 'UL-1','Campus Center Upper Level', 'Canned Tuna',1001),
(009, 'LL-1','Campus Center Lower Level', 'Canned Chicken,Body Wash',1002),
(0010,'LL-2','Campus Center Lower Level', 'Corn',1001),
(0011,'LL-3','Campus Center Lower Level', 'Brown Rice',1001);

INSERT INTO mydb.StudentClients
VALUES
(1001001,'Harvey Specter','1134567891','harveyspecter@gmail.com');

INSERT INTO mydb.StudentClients
VALUES
(1001002,'Mike Ross','1114567891','mikeross@gmail.com');

INSERT INTO mydb.StudentClients
VALUES
(1001003,'Rachel Zane','1234162221','rachel@gmail.com');

INSERT INTO mydb.StudentClients
VALUES
(1001004,'Tess','1334567891','Tess@gmail.com');

INSERT INTO mydb.StudentClients
VALUES
(1001005,'Raymond Reddignton','001010011','red@gmail.com');

INSERT INTO mydb.StudentClients
VALUES
(1001006,'Elizabeth Keen','1135567891','keen@gmail.com');

INSERT INTO mydb.StudentClients
VALUES
(1001007,'Dembe Zuma','1323456781','zuma@gmail.com');

INSERT INTO mydb.StudentClients
VALUES
(1001008,'Harlod Cooper','1212121212','cooper@gmail.com');

INSERT INTO mydb.StudentClients
VALUES
(1001009,'Shelia Aunty from Mumbai','1231231231','matchmaker@gmail.com');

INSERT INTO mydb.StudentClients
VALUES
(1001010,'Himmat Singh','1213213211','Himmat@gmail.com');


INSERT INTO mydb.Inventory_has_Storage
VALUES 
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9);