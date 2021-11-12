--- MariaDB
create TABLE persona (
  id int NOT null,
  nombre varchar(20) not null
  );

--- MariaDB.1
insert into persona VALUES(2,'Franco');


--- MariaDB.1
insert into persona VALUES(5,'Lucas');


--- MariaDB.1
insert into persona VALUES(1,'Nico');


--- MariaDB.1
insert into persona VALUES(3,'Charly');


--- MariaDB.1
insert into persona VALUES(4,'Pablo');


--- MariaDB.2
SELECT * from persona;


--- MariaDB.3
ALTER TABLE persona ADD PRIMARY KEY (id);


--- MariaDB.2
SELECT * from persona;

