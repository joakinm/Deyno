/*alter table lineaventa
drop constraint FK_Venta

alter table venta
drop constraint PK_Venta
*/
alter table venta
--drop column vnro
add vnro bigint identity(2,1)

add constraint facturasvta check(vtipo like ('A') or vtipo like ('B') or vtipo like ('C') or vtipo like ('X'))

alter table venta
add constraint PK_venta primary key (vnro,vtipo)

alter table lineaventa
drop constraint pk_lineaventa

alter table lineaventa
add constraint FK_lineaventa foreign key (vtipofac,vnrofac) references venta (vtipo,vnro)
--alter column vnrofac bigint not null
--alter column vtipofac varchar (1) not null
--add constraint facturaslineav check(vtipofac like ('A') or vtipofac like ('B') or vtipofac like ('C') or vtipofac like ('X'))
--add constraint PK_Lineaventa primary key(vnroLinea, vtipofac, vnrofac)

*/

-----------COMPRA
alter table lineacompra
drop constraint FK_compra

alter table compra
drop constraint PK_compra

alter table compra
alter column cnro varchar (12) not null

alter table compra
add constraint PK_compra primary key (cnro,ctipo)

alter table lineacompra
drop constraint PK_LineaCompra
alter table lineacompra
alter column cnrofac varchar (12) not null
alter table lineacompra
add constraint FK_compra foreign key (cnrofac,ctipofac) references compra (CNro,CTipo)
alter table lineacompra
add constraint PK_LineaCompra primary key (CNroLinea, CNrofac,  ctipofac)


