alter table NotaCl 
drop constraint FK__NotaCl__NroCl__31B762FC
drop table NotaCl
create table NotaCl (Numero int identity (1,1) primary key, Detalle varchar(50),fecha date, monto real,Tipo bit, NroCl int foreign key references Cliente (Nro_Cl))


