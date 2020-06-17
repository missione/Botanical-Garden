CREATE TABLE plant_detail(
plant_id INT NOT NULL AUTO_INCREMENT ,
latin_name VARCHAR(30) NOT NULL,
family_name VARCHAR(15),
genus VARCHAR(15),
plant_type VARCHAR(40),
PRIMARY KEY(plant_id)
);
CREATE TABLE characterstics(
family_name VARCHAR(15) PRIMARY KEY,
leaf_type VARCHAR(30),
flower_colour VARCHAR(10),
flower_type VARCHAR(30),
seed_type VARCHAR(15),
ovary_type VARCHAR(15)
);
ALTER TABLE plant_detail
ADD foreign key(family_name) REFERENCES characterstics(family_name)
ON DELETE CASCADE;

CREATE TABLE fruit(
ovary_type VARCHAR(15),
carpel VARCHAR(30),
fruit_type VARCHAR(30),
PRIMARY KEY (carpel,ovary_type)
);
Drop table plant_detail;
Drop table fruit;
Drop table characterstics;
Drop table maintainance;
Drop table employee;
Drop table custumer;

create table maintainance(
family_name VARCHAR(10),
soil_type VARCHAR(15),
sunlight VARCHAR(15),
PRIMARY KEY (family_name)
);
ALTER TABLE characterstics
ADD FOREIGN KEY(family_name) REFERENCES maintainance(family_name)
ON DELETE CASCADE ;

create table custumer(
ticket_id INT,
costumer_id INT ,
costumer_name VARCHAR(50),
credit_details VARCHAR(10),
amount INT,
PRIMARY KEY(ticket_id)
);
create table employee(
employee_id VARCHAR(10),
employee_name VARCHAR(40),
plant_id VARCHAR(40),
count_of_plants INT,
PRIMARY key (employee_id)
);

Insert into maintainance VALUES('Ericaceae','moist-soil','partial');
Insert into maintainance VALUES('Solanaceae','moist-soil','shady');
Insert into maintainance VALUES('Rosaceae','low-drained','low-sunlight');
Insert into maintainance VALUES('Moraceae','loamy','full');
Insert into maintainance VALUES('Bromeliace','loamy','partial');
Insert into maintainance VALUES('Caricaceae','moist-soil','partial');

Insert into fruit VALUES('single-ovary','single-carpel','simple');
Insert into fruit VALUES('single-ovary','multiple-carpel','aggregate');
Insert into fruit VALUES('multiple-ovary','multiple-carpel','multiple');

INSERT into characterstics VALUES('Ericaceae','small-evergreen','darkpink','multiple single-flower','dicots','single-ovary');
INSERT into characterstics VALUES('Solanaceae','long-hairy','yellow','multiple single-flower','dicots','single-ovary');
INSERT into characterstics VALUES('Rosaceae','Compound,sawtoothedged','white','single-flower,multiple-pistil','dicots','single-ovary');
INSERT into characterstics VALUES('Moraceae','simple','green','cluster of flower','dicots','multiple-ovary');
INSERT into characterstics VALUES('Bromeliace','long','red','cluster of flower','Monocots','multiple-ovary');
INSERT into characterstics VALUES('Caricaceae','long and large','white','cluster of flower','dicots','multiple-ovary');

INsert into plant_detail VALUES(1,'vaccinium erythrocarpum','Ericaceae','Vaccinium','shrub');
INsert into plant_detail VALUES(2,'Solunum lycopersium','Solanaceae','Solanum','vines');
INsert into plant_detail VALUES(3,'Fragaria ananassa','Rosaceae','Frageria','shrubs');
INsert into plant_detail VALUES (4,'Maclura pomifera','Moraceae','Maclura','shrubs');
INsert into plant_detail VALUES(5,'Ananas comosus','Bromeliace','Ananas','herbacious');
INsert into plant_detail VALUES(6,'Eribotrya japonica','Rosaceae','Eriobotrya','tree');
INsert into plant_detail VALUES(7,'Vaccinium corymbosum','Ericaceae','Vaccinium','perennial-shrub');
Insert into plant_detail VALUES(8,'Carica papaya','Caricaceae','Carica','branched tree');
Insert into plant_detail VALUES(9,'Solanum melogena','Solanaceae','Solanum','vines');


Insert into custumer VALUES(100,301,'jack','atm',30);
Insert into custumer VALUES(101,302,'david','atm',30);
Insert into custumer VALUES(102,303,'claire','cash',30);
Insert into custumer VALUES(103,301,'jack','cash',60);
Insert into custumer VALUES(104,304,'melissa','atm',60);
Insert into custumer VALUES(105,302,'david','cash',30);
Insert into custumer VALUES(106,302,'david','cash',60);

Insert into employee VALUES('11','jim','1,2,3',3);
Insert into employee VALUES('12','david','2,5,7',3);
Insert into employee VALUES('13','john','8,9,5,4',4);
Insert into employee VALUES('14','andy','6',1);

Select * from employee;






