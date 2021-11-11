 select  c.nombre as 'Nombre del Curso',c.cupo - count(i.curso_codigo)
 as Cantidad_disponible
 from inscripcion i, curso c
 where c.codigo =i.curso_codigo and 
	(c.cupo - (select count(i.curso_codigo) from inscripcion i where c.codigo=i.curso_codigo)<10)
group by i.curso_codigo;