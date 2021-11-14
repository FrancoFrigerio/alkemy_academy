select p.id, p.nombre as 'Nombre del Profesor', count(*) as 'Cantidad de cursos en turno noche' 
from curso c inner join profesor p 
where c.profesor_id=p.id and c.turno='Noche' 
group by p.nombre having count(*)>1
