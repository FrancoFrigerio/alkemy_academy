select e.nombre,e.apellido, c.nombre as 'Nombre del curso', c.descripcion, c.codigo from estudiante e 
	inner join inscripcion i on e.legajo=i.estudiante_codigo
		inner join curso c where i.curso_codigo = c.codigo order by c.nombre asc