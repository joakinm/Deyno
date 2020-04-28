/*
Create table Cliente (Nro_Cl int IDENTITY (2,1)primary key, apellido varchar (15), nombre varchar(15), cuit varchar(15), tipoCl varchar(25));
create table proveedor ( ID_prov int identity(2,1)primary key, nombre varchar(20), direccion varchar (40), cuit varchar (15), CP smallint, tel varchar (12));
create table producto (prod_cod int identity(2,1) primary key, nombre varchar (20), descripcion varchar(150), stockmin smallint, Stockactual smallint);
create table localidad (CP smallint primary key , provincia varchar (30), Pais varchar (15), ciudad varchar(30));

create table compra (CNro int, CTipo varchar(20), CONSTRAINT PK_Compra Primary key (CNro,CTipo),fecha date, prov int foreign key references proveedor (ID_prov), importe real);
create table LineaCompra (CNroLinea int Identity (2,1) primary key,Cnrofac int, ctipofac varchar(20),
 CONSTRAINT FK_factura foreign key (Cnrofac ,Ctipofac) references Compra(CNro,CTipo),qprod int, Precio real,prod int foreign key references producto(prod_cod));
*/
Create Table Venta (VNro int not null, VTipo varchar(1) not null, CONSTRAINT PK_Venta Primary key (VNro,VTipo),fecha date not null, CL int foreign key references Cliente (Nro_Cl) on delete set null, importe real);
create table LineaVenta (VNroLinea int Identity (2,1) primary key,Vnrofac int,VTipoFac varchar(20),
CONSTRAINT FK_Venta foreign key (Vnrofac ,Vtipofac) references Venta(VNro,VTipo),qprod int, Precio real,prod int foreign key references producto(prod_cod));

create table cuotas (nrocuotas int identity (1,1) primary key,ventanrofac int, tipovta varchar (1),constraint FK_venta foreign key (ventanrofac,tipovta) references venta(vnro,vtipo) on delete cascade, fecha date, valor money, cobrado money, faltacobrar money, observacion varchar (20))

create table esta_en (Nro_Cl int identity (2,1)foreign key references Cliente(Nro_Cl), CP smallint foreign key references Localidad (CP), constraint PK_NroCL_CP primary key(Nro_cl,CP));
create table ubicado_en(ID_prov int identity (2,1)foreign key references Proveedor(Id_Prov), CP smallint foreign key references Localidad (CP), constraint PK_ID_Prov_CP primary key(Id_Prov,CP));*/
