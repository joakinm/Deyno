set language  'español';select vnro, fecha,('Venta Factura: ' 
+ cast(vnro AS varchar (15))) as movimiento, importe AS debe ,'' 
as haber from venta where 
fecha >= '24/06/2014' and fecha <= '24/06/2014'
union select vnro, fecha, ('Pago factura : ' + cast(vnro AS varchar (15))) as movimiento,'' 
as debe, importe AS haber from venta where fecha >= '24/06/2014' and fecha <= '24/06/2014'
 
union 
set language  'español';
select vnro, v.fecha, 'Pago Cuota' +cast(nrocuotas as varchar(2)) +' , Factura '+ 
cast(vnro as varchar (15)) as movimiento , cobrado as debe, '' as haber from cuotas c 
inner join venta v on vnro = ventanrofac 
where observacion = 'saldada' and v.fecha >= '24/06/2014' and v.fecha <= '24/06/2014' 
union 
select vnro, v.fecha, 'Pago Cuota' +cast(nrocuotas as varchar (2)) +' , Factura '+ 
cast(vnro as varchar (15)) as movimiento , '' as debe, cobrado as haber from cuotas c inner join venta v 
on vnro = ventanrofac 
where observacion = 'saldada' and v.fecha >='24/06/2014' and v.fecha <= '24/06/2014'