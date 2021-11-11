select p.nombre, p.apellido, c.nombre as 'Nombre del curso',c.descripcion,c.cupo,c.turno
 from curso c inner join profesor p on p.id = c.profesor_id order by c.nombre 