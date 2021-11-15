/*------Datos y cantidad de cursos que realiza cada estudiante*/
select e.legajo, concat( e.nombre,' ' ,e.apellido) as 'Nombre Completo', count(i.estudiante_codigo) as 'Cantidad de cursos que realiza'
from estudiante e left join  inscripcion i 
on e.legajo=i.estudiante_codigo 
group by e.nombre

/*----- Datos de estudiantes que realizan mas de un curso*/
select e.legajo,e.nombre,count(*) as 'Cantidad de cursos que realiza'
from estudiante e inner join  inscripcion i 
on e.legajo=i.estudiante_codigo 
group by e.nombre having count(*)>1


/*---------- Datos de estudiantes que no realizan cursos*/
select e.legajo,e.nombre
from estudiante e left join  inscripcion i 
on e.legajo=i.estudiante_codigo 
group by e.nombre having count(i.estudiante_codigo)=0 


/*------- Indices clousterizados y no clousterizados */
	
	alter table profesor add primary key (id)
	
	alter table curso add primary key (codigo),
		add foreign key (profesor_id) REFERENCES profesor(id) 
		
	alter table estudiante 
		add primary key (legajo)
		
	alter table inscripcion 
		add primary key (numero),
		add foreign key (curso_codigo) REFERENCES curso(codigo) ,
		add foreign key (estudiante_codigo) REFERENCES estudiante(legajo)



/*------- Alumnos de los profesores 'Paz' y 'Perez'*/
	select c.codigo,i.estudiante_codigo,e.* from curso c left join profesor p on c.profesor_id=p.id inner join
		inscripcion i on i.curso_codigo=c.codigo inner join 
		estudiante e on e.legajo=i.estudiante_codigo where p.apellido = 'Perez' or p.apellido ='Paz' group by c.codigo
