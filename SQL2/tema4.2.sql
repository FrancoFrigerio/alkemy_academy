select concat(e.nombre,' ',e.apellido) as 'Nombre Completo',  e.legajo 
from estudiante e inner join inscripcion i 
where i.estudiante_codigo=e.legajo and i.curso_codigo <> 105 
group by e.nombre