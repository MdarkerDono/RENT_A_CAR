/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2014                    */
/* Created on:     21-12-2016 20:33:36                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ARRIENDO') and o.name = 'FK_ARRIENDO_ARRIENDO__FORMA_PA')
alter table ARRIENDO
   drop constraint FK_ARRIENDO_ARRIENDO__FORMA_PA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ARRIENDO') and o.name = 'FK_ARRIENDO_AYUDA_EN_EMPLEADO')
alter table ARRIENDO
   drop constraint FK_ARRIENDO_AYUDA_EN_EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ARRIENDO') and o.name = 'FK_ARRIENDO_CLIENTE_A_CLIENTE')
alter table ARRIENDO
   drop constraint FK_ARRIENDO_CLIENTE_A_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CLIENTE') and o.name = 'FK_CLIENTE_VIVE_EN_COMUNA')
alter table CLIENTE
   drop constraint FK_CLIENTE_VIVE_EN_COMUNA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COMENTARIO') and o.name = 'FK_COMENTAR_VEHICULO__VEHICULO')
alter table COMENTARIO
   drop constraint FK_COMENTAR_VEHICULO__VEHICULO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COMPRA') and o.name = 'FK_COMPRA_PROVEEDOR_PROVEEDO')
alter table COMPRA
   drop constraint FK_COMPRA_PROVEEDOR_PROVEEDO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COMPRA') and o.name = 'FK_COMPRA_SE_PAGA_FORMA_PA')
alter table COMPRA
   drop constraint FK_COMPRA_SE_PAGA_FORMA_PA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COMPRA') and o.name = 'FK_COMPRA_USUARIO_C_USUARIO')
alter table COMPRA
   drop constraint FK_COMPRA_USUARIO_C_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADO') and o.name = 'FK_EMPLEADO_COMENTARI_COMENTAR')
alter table EMPLEADO
   drop constraint FK_EMPLEADO_COMENTARI_COMENTAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADO') and o.name = 'FK_EMPLEADO_COMUNA_EM_COMUNA')
alter table EMPLEADO
   drop constraint FK_EMPLEADO_COMUNA_EM_COMUNA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FORMA_PAGO') and o.name = 'FK_FORMA_PA_VEHICULO__VEHICULO')
alter table FORMA_PAGO
   drop constraint FK_FORMA_PA_VEHICULO__VEHICULO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LOCAL') and o.name = 'FK_LOCAL_COMUNA_LO_COMUNA')
alter table LOCAL
   drop constraint FK_LOCAL_COMUNA_LO_COMUNA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROVEEDOR') and o.name = 'FK_PROVEEDO_SE_UBICA__COMUNA')
alter table PROVEEDOR
   drop constraint FK_PROVEEDO_SE_UBICA__COMUNA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TIPO_VEHICULO') and o.name = 'FK_TIPO_VEH_TIENE_VAR_MARCA')
alter table TIPO_VEHICULO
   drop constraint FK_TIPO_VEH_TIENE_VAR_MARCA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VEHICULO') and o.name = 'FK_VEHICULO_ESTA_CUBI_SEGURO')
alter table VEHICULO
   drop constraint FK_VEHICULO_ESTA_CUBI_SEGURO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VEHICULO') and o.name = 'FK_VEHICULO_MARCA_VEH_MARCA')
alter table VEHICULO
   drop constraint FK_VEHICULO_MARCA_VEH_MARCA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VENTA') and o.name = 'FK_VENTA_VENTA_FOR_FORMA_PA')
alter table VENTA
   drop constraint FK_VENTA_VENTA_FOR_FORMA_PA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ARRIENDO')
            and   name  = 'CLIENTE_ARRIENDO_FK'
            and   indid > 0
            and   indid < 255)
   drop index ARRIENDO.CLIENTE_ARRIENDO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ARRIENDO')
            and   name  = 'AYUDA_EN_FK'
            and   indid > 0
            and   indid < 255)
   drop index ARRIENDO.AYUDA_EN_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ARRIENDO')
            and   name  = 'ARRIENDO_FORMA_PAGO_FK'
            and   indid > 0
            and   indid < 255)
   drop index ARRIENDO.ARRIENDO_FORMA_PAGO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ARRIENDO')
            and   type = 'U')
   drop table ARRIENDO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CLIENTE')
            and   name  = 'VIVE_EN_FK'
            and   indid > 0
            and   indid < 255)
   drop index CLIENTE.VIVE_EN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTE')
            and   type = 'U')
   drop table CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('COMENTARIO')
            and   name  = 'VEHICULO_COMENTARIO_FK'
            and   indid > 0
            and   indid < 255)
   drop index COMENTARIO.VEHICULO_COMENTARIO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('COMENTARIO')
            and   type = 'U')
   drop table COMENTARIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('COMPRA')
            and   name  = 'USUARIO_COMPRA_FK'
            and   indid > 0
            and   indid < 255)
   drop index COMPRA.USUARIO_COMPRA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('COMPRA')
            and   name  = 'PROVEEDOR_COMPRA_FK'
            and   indid > 0
            and   indid < 255)
   drop index COMPRA.PROVEEDOR_COMPRA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('COMPRA')
            and   name  = 'SE_PAGA_FK'
            and   indid > 0
            and   indid < 255)
   drop index COMPRA.SE_PAGA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('COMPRA')
            and   type = 'U')
   drop table COMPRA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('COMUNA')
            and   type = 'U')
   drop table COMUNA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EMPLEADO')
            and   name  = 'COMENTARIO_EMPLEADO_FK'
            and   indid > 0
            and   indid < 255)
   drop index EMPLEADO.COMENTARIO_EMPLEADO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EMPLEADO')
            and   name  = 'COMUNA_EMPLEADO_FK'
            and   indid > 0
            and   indid < 255)
   drop index EMPLEADO.COMUNA_EMPLEADO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPLEADO')
            and   type = 'U')
   drop table EMPLEADO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FORMA_PAGO')
            and   name  = 'VEHICULO_PAGO_FK'
            and   indid > 0
            and   indid < 255)
   drop index FORMA_PAGO.VEHICULO_PAGO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FORMA_PAGO')
            and   type = 'U')
   drop table FORMA_PAGO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LOCAL')
            and   name  = 'COMUNA_LOCAL_FK'
            and   indid > 0
            and   indid < 255)
   drop index LOCAL.COMUNA_LOCAL_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOCAL')
            and   type = 'U')
   drop table LOCAL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MARCA')
            and   type = 'U')
   drop table MARCA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROVEEDOR')
            and   name  = 'SE_UBICA_EN_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROVEEDOR.SE_UBICA_EN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROVEEDOR')
            and   type = 'U')
   drop table PROVEEDOR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SEGURO')
            and   type = 'U')
   drop table SEGURO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TIPO_VEHICULO')
            and   name  = 'TIENE_VARIOS_FK'
            and   indid > 0
            and   indid < 255)
   drop index TIPO_VEHICULO.TIENE_VARIOS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIPO_VEHICULO')
            and   type = 'U')
   drop table TIPO_VEHICULO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('USUARIO')
            and   type = 'U')
   drop table USUARIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VEHICULO')
            and   name  = 'ESTA_CUBIERTO_FK'
            and   indid > 0
            and   indid < 255)
   drop index VEHICULO.ESTA_CUBIERTO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VEHICULO')
            and   name  = 'MARCA_VEHICULO_FK'
            and   indid > 0
            and   indid < 255)
   drop index VEHICULO.MARCA_VEHICULO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VEHICULO')
            and   type = 'U')
   drop table VEHICULO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VENTA')
            and   name  = 'VENTA_FORMA_PAGO_FK'
            and   indid > 0
            and   indid < 255)
   drop index VENTA.VENTA_FORMA_PAGO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VENTA')
            and   type = 'U')
   drop table VENTA
go

/*==============================================================*/
/* Table: ARRIENDO                                              */
/*==============================================================*/
create table ARRIENDO (
   ID_ARRIENDO          int                  not null,
   ID_EMPLEADO          int                  null,
   ID_FORMAPAGO         int                  null,
   ID_CLIENTE           int                  null,
   VALOR_ARRIENDO       float(1000000000)    not null,
   DETALLE_ARRIENDO     varchar(1000)        not null,
   constraint PK_ARRIENDO primary key (ID_ARRIENDO)
)
go

/*==============================================================*/
/* Index: ARRIENDO_FORMA_PAGO_FK                                */
/*==============================================================*/




create nonclustered index ARRIENDO_FORMA_PAGO_FK on ARRIENDO (ID_FORMAPAGO ASC)
go

/*==============================================================*/
/* Index: AYUDA_EN_FK                                           */
/*==============================================================*/




create nonclustered index AYUDA_EN_FK on ARRIENDO (ID_EMPLEADO ASC)
go

/*==============================================================*/
/* Index: CLIENTE_ARRIENDO_FK                                   */
/*==============================================================*/




create nonclustered index CLIENTE_ARRIENDO_FK on ARRIENDO (ID_CLIENTE ASC)
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_CLIENTE           int                  not null,
   ID_COMUNA            int                  null,
   RUT_CLIENTE          varchar(10)          not null,
   NOMBRE_CLIENTE       varchar(80)          not null,
   DIRECCION_CLIENTE    varchar(100)         not null,
   TELEFONO_CLIENTE     varchar(12)          not null,
   EMAIL_CLIENTE        varchar(100)         not null,
   PASSWORD_CLIENTE     varchar(10)          not null,
   constraint PK_CLIENTE primary key (ID_CLIENTE)
)
go

/*==============================================================*/
/* Index: VIVE_EN_FK                                            */
/*==============================================================*/




create nonclustered index VIVE_EN_FK on CLIENTE (ID_COMUNA ASC)
go

/*==============================================================*/
/* Table: COMENTARIO                                            */
/*==============================================================*/
create table COMENTARIO (
   ID_COMENTARIO        int                  not null,
   ID_VEHICULO          int                  null,
   DETALLE_COMETARIO    varchar(1000)        not null,
   constraint PK_COMENTARIO primary key (ID_COMENTARIO)
)
go

/*==============================================================*/
/* Index: VEHICULO_COMENTARIO_FK                                */
/*==============================================================*/




create nonclustered index VEHICULO_COMENTARIO_FK on COMENTARIO (ID_VEHICULO ASC)
go

/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
   ID_COMPRA            int                  not null,
   ID_FORMAPAGO         int                  null,
   ID_USUARIO           int                  null,
   RUT_PROVEEDOR        varchar(10)          null,
   VALOR_COMPRA         float(1000000000)    not null,
   DETALLE_COMPRA       varchar(1000)        not null,
   constraint PK_COMPRA primary key (ID_COMPRA)
)
go

/*==============================================================*/
/* Index: SE_PAGA_FK                                            */
/*==============================================================*/




create nonclustered index SE_PAGA_FK on COMPRA (ID_FORMAPAGO ASC)
go

/*==============================================================*/
/* Index: PROVEEDOR_COMPRA_FK                                   */
/*==============================================================*/




create nonclustered index PROVEEDOR_COMPRA_FK on COMPRA (RUT_PROVEEDOR ASC)
go

/*==============================================================*/
/* Index: USUARIO_COMPRA_FK                                     */
/*==============================================================*/




create nonclustered index USUARIO_COMPRA_FK on COMPRA (ID_USUARIO ASC)
go

/*==============================================================*/
/* Table: COMUNA                                                */
/*==============================================================*/
create table COMUNA (
   ID_COMUNA            int                  not null,
   NOMBRE_COMUNA        varchar(100)         not null,
   constraint PK_COMUNA primary key (ID_COMUNA)
)
go

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   ID_EMPLEADO          int                  not null,
   ID_COMENTARIO        int                  null,
   ID_COMUNA            int                  null,
   RUT_EMPLEADOR        varchar(10)          not null,
   NOMBRE_EMPLEADO      varchar(50)          not null,
   DIRECCION_EMPLEADO   varchar(80)          not null,
   TELEFONO_EMPLEADO    varchar(10)          not null,
   CORREO_EMPLEADO      varchar(90)          not null,
   constraint PK_EMPLEADO primary key (ID_EMPLEADO)
)
go

/*==============================================================*/
/* Index: COMUNA_EMPLEADO_FK                                    */
/*==============================================================*/




create nonclustered index COMUNA_EMPLEADO_FK on EMPLEADO (ID_COMUNA ASC)
go

/*==============================================================*/
/* Index: COMENTARIO_EMPLEADO_FK                                */
/*==============================================================*/




create nonclustered index COMENTARIO_EMPLEADO_FK on EMPLEADO (ID_COMENTARIO ASC)
go

/*==============================================================*/
/* Table: FORMA_PAGO                                            */
/*==============================================================*/
create table FORMA_PAGO (
   ID_FORMAPAGO         int                  not null,
   ID_VEHICULO          int                  null,
   NOMBRETIPOPAGO       varchar(60)          not null,
   constraint PK_FORMA_PAGO primary key (ID_FORMAPAGO)
)
go

/*==============================================================*/
/* Index: VEHICULO_PAGO_FK                                      */
/*==============================================================*/




create nonclustered index VEHICULO_PAGO_FK on FORMA_PAGO (ID_VEHICULO ASC)
go

/*==============================================================*/
/* Table: LOCAL                                                 */
/*==============================================================*/
create table LOCAL (
   ID_LOCAL             int                  not null,
   ID_COMUNA            int                  null,
   NOMBRE_LOCAL         varchar(60)          not null,
   DIRECCION_LOCAL      varchar(200)         not null,
   TELEFONO_LOCAL       varchar(12)          not null,
   constraint PK_LOCAL primary key (ID_LOCAL)
)
go

/*==============================================================*/
/* Index: COMUNA_LOCAL_FK                                       */
/*==============================================================*/




create nonclustered index COMUNA_LOCAL_FK on LOCAL (ID_COMUNA ASC)
go

/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
   ID_MARCA             int                  not null,
   NOMBRE_MARCA         varchar(60)          not null,
   constraint PK_MARCA primary key (ID_MARCA)
)
go

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR (
   RUT_PROVEEDOR        varchar(10)          not null,
   ID_COMUNA            int                  null,
   NOMBRE_PROVEEDOR     varchar(80)          not null,
   TELEFONO_PROVEEDOR   varchar(12)          not null,
   CORREO_PROVEEDOR     varchar(80)          not null,
   DIRECCION_PROVEEDOR  varchar(200)         not null,
   constraint PK_PROVEEDOR primary key (RUT_PROVEEDOR)
)
go

/*==============================================================*/
/* Index: SE_UBICA_EN_FK                                        */
/*==============================================================*/




create nonclustered index SE_UBICA_EN_FK on PROVEEDOR (ID_COMUNA ASC)
go

/*==============================================================*/
/* Table: SEGURO                                                */
/*==============================================================*/
create table SEGURO (
   ID_SEGURO            int                  not null,
   NOMBRE_SEGURO        varchar(80)          not null,
   TIPO_SEGURO          varchar(10)          not null,
   DETALLE_SEGURO       varchar(1000)        not null,
   DESDE                datetime             not null,
   HASTA                datetime             not null,
   constraint PK_SEGURO primary key (ID_SEGURO)
)
go

/*==============================================================*/
/* Table: TIPO_VEHICULO                                         */
/*==============================================================*/
create table TIPO_VEHICULO (
   ID_TIPOVEHICULO      int                  not null,
   ID_MARCA             int                  null,
   NOMBRE_TIPO          varchar(70)          not null,
   constraint PK_TIPO_VEHICULO primary key (ID_TIPOVEHICULO)
)
go

/*==============================================================*/
/* Index: TIENE_VARIOS_FK                                       */
/*==============================================================*/




create nonclustered index TIENE_VARIOS_FK on TIPO_VEHICULO (ID_MARCA ASC)
go

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   ID_USUARIO           int                  not null,
   "USER"               varchar(30)          not null,
   PASS_USER            varchar(10)          not null,
   constraint PK_USUARIO primary key (ID_USUARIO)
)
go

/*==============================================================*/
/* Table: VEHICULO                                              */
/*==============================================================*/
create table VEHICULO (
   ID_VEHICULO          int                  not null,
   ID_MARCA             int                  null,
   ID_SEGURO            int                  null,
   PATENTE              varchar(8)           not null,
   NRO_PUERTAS          int                  not null,
   CAP_PASAJEROS        int                  not null,
   DETALLE_VEHICULO     varchar(600)         not null,
   constraint PK_VEHICULO primary key (ID_VEHICULO)
)
go

/*==============================================================*/
/* Index: MARCA_VEHICULO_FK                                     */
/*==============================================================*/




create nonclustered index MARCA_VEHICULO_FK on VEHICULO (ID_MARCA ASC)
go

/*==============================================================*/
/* Index: ESTA_CUBIERTO_FK                                      */
/*==============================================================*/




create nonclustered index ESTA_CUBIERTO_FK on VEHICULO (ID_SEGURO ASC)
go

/*==============================================================*/
/* Table: VENTA                                                 */
/*==============================================================*/
create table VENTA (
   ID_VENTA             int                  not null,
   ID_FORMAPAGO         int                  null,
   VALOR_VENTA          float(1000000000)    not null,
   DETALLE_VENTA        varchar(1000)        not null,
   constraint PK_VENTA primary key (ID_VENTA)
)
go

/*==============================================================*/
/* Index: VENTA_FORMA_PAGO_FK                                   */
/*==============================================================*/




create nonclustered index VENTA_FORMA_PAGO_FK on VENTA (ID_FORMAPAGO ASC)
go

alter table ARRIENDO
   add constraint FK_ARRIENDO_ARRIENDO__FORMA_PA foreign key (ID_FORMAPAGO)
      references FORMA_PAGO (ID_FORMAPAGO)
go

alter table ARRIENDO
   add constraint FK_ARRIENDO_AYUDA_EN_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
go

alter table ARRIENDO
   add constraint FK_ARRIENDO_CLIENTE_A_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
go

alter table CLIENTE
   add constraint FK_CLIENTE_VIVE_EN_COMUNA foreign key (ID_COMUNA)
      references COMUNA (ID_COMUNA)
go

alter table COMENTARIO
   add constraint FK_COMENTAR_VEHICULO__VEHICULO foreign key (ID_VEHICULO)
      references VEHICULO (ID_VEHICULO)
go

alter table COMPRA
   add constraint FK_COMPRA_PROVEEDOR_PROVEEDO foreign key (RUT_PROVEEDOR)
      references PROVEEDOR (RUT_PROVEEDOR)
go

alter table COMPRA
   add constraint FK_COMPRA_SE_PAGA_FORMA_PA foreign key (ID_FORMAPAGO)
      references FORMA_PAGO (ID_FORMAPAGO)
go

alter table COMPRA
   add constraint FK_COMPRA_USUARIO_C_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO)
go

alter table EMPLEADO
   add constraint FK_EMPLEADO_COMENTARI_COMENTAR foreign key (ID_COMENTARIO)
      references COMENTARIO (ID_COMENTARIO)
go

alter table EMPLEADO
   add constraint FK_EMPLEADO_COMUNA_EM_COMUNA foreign key (ID_COMUNA)
      references COMUNA (ID_COMUNA)
go

alter table FORMA_PAGO
   add constraint FK_FORMA_PA_VEHICULO__VEHICULO foreign key (ID_VEHICULO)
      references VEHICULO (ID_VEHICULO)
go

alter table LOCAL
   add constraint FK_LOCAL_COMUNA_LO_COMUNA foreign key (ID_COMUNA)
      references COMUNA (ID_COMUNA)
go

alter table PROVEEDOR
   add constraint FK_PROVEEDO_SE_UBICA__COMUNA foreign key (ID_COMUNA)
      references COMUNA (ID_COMUNA)
go

alter table TIPO_VEHICULO
   add constraint FK_TIPO_VEH_TIENE_VAR_MARCA foreign key (ID_MARCA)
      references MARCA (ID_MARCA)
go

alter table VEHICULO
   add constraint FK_VEHICULO_ESTA_CUBI_SEGURO foreign key (ID_SEGURO)
      references SEGURO (ID_SEGURO)
go

alter table VEHICULO
   add constraint FK_VEHICULO_MARCA_VEH_MARCA foreign key (ID_MARCA)
      references MARCA (ID_MARCA)
go

alter table VENTA
   add constraint FK_VENTA_VENTA_FOR_FORMA_PA foreign key (ID_FORMAPAGO)
      references FORMA_PAGO (ID_FORMAPAGO)
go

