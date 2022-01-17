
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

insert into employees(employee_name)
values  ('Thomas_Holland'),
		('Zendaya_Maree'),
		('Marisa_Tomei'),
		('Madison_Iseman'),
		('Benedict_Cumberbatch'),
		('Angourie_Rice'),
		('Jonathan_Simmons'),
		('Alfred_Molina'),
		('Jamie_Foxx'),
		('Martin_Starr'),
		('Jacob_Batalon'),
		('Andrew_Garfield'),
		('Tobias_Maguire'),
		('Scarlett_Johansson'),
		('Christopher_Hemsworth'),
		('Robert_Downey'),
		('Christopher_Pratt'),
		('Elizabeth_Olsen'),
		('Mark_Ruffalo'),
		('Christopher_Evans'),
		('Josh_Brolin'),
		('Zoe_Saldana'),
		('Chadwick_Boseman'),
		('Thomas_Hiddleston'),
		('Paul_Bettany'),
		('Sebastian_Stan'),
		('Anthony_Mackie'),
		('Pom_Klementieff'),
		('David_Bautista'),
		('Donald_Cheadle'),
		('Karen_Gillan'),
		('Danai_Gurira'),
		('Bradley_Cooper'),
		('Vin_Diesel'),
		('Letitia_Wright'),
		('Jeremy_Renner'),
		('Winston_Duke'),
		('Peter_Dinklage'),
		('Gwyneth_Paltrow'),
		('Stan_Lee'),
		('Carrie_Coon'),
		('Kevin_Feige'),
		('Samuel_Jackson'),
		('Idris_Elba'),
		('Benicio_Del'),
		('Paul_Rudd'),
		('Sean_Gunn'),
		('Brie_Larson'),
		('Ross_Marquand'),
		('Florence_Kasumba'),
		('Evangeline_Lilly'),
		('Tessa_Thompson'),
		('Henry_Cavill'),
		('Margot_Robbie'),
		('Jared_Leto'),
		('Willem_Dafoe'),
		('Ezra_Miller'),
		('Gal_Gadot'),
		('Benjamin_ffleck'),
		('Jason_Momoa'),
		('Ray_Fisher'),
		('Amy_Adams'),
		('Jeremy_Irons'),
		('David_Thewlis'),
		('Ray_Porter'),
		('Dwayne_Johnson'),
		('Ryan_Reynolds'),
		('Kevin_Hart'),
		('Jack_Black'),
		('Nicholas_Jonas');
	
select * from employees;
		
create table salary (
	id serial primary key,
	monthly_salary int not null
);
select * from salary;

insert into salary(monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
 		(1900),
		(2000),
		(2100),
		(2200),
 		(2300),
 		(2400),
 		(2500);
 	
select * from salary;

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
select * from employee_salary;

insert into employee_salary (employee_id, salary_id)
values  (1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15),
		(16, 16),
		(17, 12),
		(18, 10),
		(19, 1),
		(20, 5),
		(21, 8),
		(22, 15),
		(23, 11),
		(24, 4),
		(25, 3),
		(26, 3),
		(27, 16),
		(28, 5),
		(29, 8),
		(30, 10),
		(71, 13),
		(72, 14),
		(73, 10),
		(74, 2),
		(75, 3),
		(76, 1),
		(77, 9),
		(78, 11),
		(79, 13),
		(80, 4);
	
select * from employee_salary; 

create table roles (
	id serial primary key,
	role_name int not null unique
);

select * from roles;

alter table roles alter column role_name type varchar(30);

insert into roles (role_name)
values   ('Junior_Python_developer'),
		 ('Middle_Python_developer'),
		 ('Senior_Python_developer'),
		 ('Junior_Java_developer'),
		 ('Middle_Java_developer'),
		 ('Senior_Java_developer'),
		 ('Junior_JavaScript_developer'),
		 ('Middle_JavaScript_developer'),
		 ('Senior_JavaScript_developer'),
		 ('Junior_Manual_QA_engineer'),
		 ('Middle_Manual_QA_engineer'),
		 ('Senior_Manual_QA_engineer'),
		 ('Project_Manager'),
		 ('Designer'),
		 ('HR'),
		 ('CEO'),
		 ('Sales_manager'),
		 ('Junior_Automation_QA_engineer'),
		 ('Middle_Automation_QA_engineer'),
		 ('Senior_Automation_QA_engineer');	
		
select  * from roles;	 

create table roles_employee (
	id serial primary key,
	employee_id int not null unique references employees(id),
	role_id int not null references roles(id)
	);	
		
select * from roles_employee;

insert into roles_employee (employee_id, role_id)
values  (1, 5),
		(2, 1),
		(3, 8),
		(4, 12),
		(5, 16),
		(6, 13),
		(7, 4),
		(8, 5),
		(9, 2),
		(10, 3),
		(11, 6),
		(12, 7),
		(13, 9),
		(14, 8),
		(15, 10),
		(16, 11),
		(17, 14),
		(18, 15),
		(19, 4),
		(20, 4),
		(21, 9),
		(22, 12),
		(23, 11),
		(24, 1),
		(25, 1),
		(26, 2),
		(27, 5),
		(28, 10),
		(29, 1),
		(30, 3),
		(31, 6),
		(32, 8),
		(33, 7),
		(34, 9),
		(35, 10),
		(36, 11),
		(37, 12),
		(38, 13),
		(39, 14),
		(40, 15);

	select * from roles_employee;
	
		