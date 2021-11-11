 select  c.nombre as 'Nombre del Curso',c.cupo - count(i.curso_codigo) as 'Cantidad Disponible' from inscripcion i, curso c
 where c.codigo =i.curso_codigo group by curso_codigo 