create procedure vervencidos
as 
begin 
	update cuotas set observacion = 'vencidas' where fecha > GETDATE()
end