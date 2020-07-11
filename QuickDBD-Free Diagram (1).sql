-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/4SxBun
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Users] (
    [id] int  NOT NULL ,
    [name] char(100)  NOT NULL ,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [Products] (
    [id] int  NOT NULL ,
    [productName] varchar(100)  NOT NULL ,
    [price] money  NOT NULL ,
    [sid] int  NOT NULL ,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED (
        [id] ASC
    ),
    CONSTRAINT [UK_Products_productName] UNIQUE (
        [productName]
    )
)

-- add constraint
CREATE TABLE [Suppliers] (
    [id] int  NOT NULL ,
    [name] char(100)  NOT NULL ,
    CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [Orders] (
    [id] int  NOT NULL ,
    [sid] int  NOT NULL ,
    [pid] int  NOT NULL ,
    [uid] int  NOT NULL ,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [Shipment] (
    [id] int  NOT NULL ,
    [oid] int  NOT NULL ,
    [orderdate] DATETIME  NOT NULL ,
    [completeddate] DATETIME  NULL ,
    [qty] int  NOT NULL ,
    [status] char(20)  NOT NULL ,
    CONSTRAINT [PK_Shipment] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

ALTER TABLE [Products] WITH CHECK ADD CONSTRAINT [FK_Products_sid] FOREIGN KEY([sid])
REFERENCES [Suppliers] ([id])

ALTER TABLE [Products] CHECK CONSTRAINT [FK_Products_sid]

ALTER TABLE [Orders] WITH CHECK ADD CONSTRAINT [FK_Orders_sid] FOREIGN KEY([sid])
REFERENCES [Suppliers] ([id])

ALTER TABLE [Orders] CHECK CONSTRAINT [FK_Orders_sid]

ALTER TABLE [Orders] WITH CHECK ADD CONSTRAINT [FK_Orders_pid] FOREIGN KEY([pid])
REFERENCES [Products] ([id])

ALTER TABLE [Orders] CHECK CONSTRAINT [FK_Orders_pid]

ALTER TABLE [Orders] WITH CHECK ADD CONSTRAINT [FK_Orders_uid] FOREIGN KEY([uid])
REFERENCES [Users] ([id])

ALTER TABLE [Orders] CHECK CONSTRAINT [FK_Orders_uid]

ALTER TABLE [Shipment] WITH CHECK ADD CONSTRAINT [FK_Shipment_oid] FOREIGN KEY([oid])
REFERENCES [Orders] ([id])

ALTER TABLE [Shipment] CHECK CONSTRAINT [FK_Shipment_oid]

COMMIT TRANSACTION QUICKDBD