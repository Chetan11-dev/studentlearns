-- Delete rows from table '[Users]' in schema '[dbo]'
DELETE FROM [dbo].[Shipment]
GO

DELETE FROM [dbo].[Orders]
GO

DELETE FROM [dbo].[Products]
GO

DELETE FROM [dbo].[Suppliers]
GO


DELETE FROM [dbo].[Users]
GO

-- DELETE FROM  Orders ; 
-- DELETE FROM  Products ; 
-- DELETE FROM  Shipment ; 
-- DELETE FROM  Suppliers ; 
 

-- Insert rows into table 'Users' in schema '[dbo]'

INSERT INTO [dbo].[Users]
( -- Columns to insert data into
 [id], [name]
)
VALUES
( -- First row: values for the columns in the list above
 1 , 'Ram'
 ),

( -- First row: values for the columns in the list above
 2 , 'Krishna'
 );
-- Add more rows here
GO

-- Insert rows into table 'Suppliers' in schema '[dbo]'
INSERT INTO [dbo].[Suppliers]
( -- Columns to insert data into
 [id], [name]
)
VALUES
( -- First row: values for the columns in the list above
 1 , 'John Doe'
),
( -- Second row: values for the columns in the list above
 2  , 'Fernando Atila'
)
-- Add more rows here
GO

-- easy way 

INSERT INTO Products VALUES
( 1 , 'V-neck sweater','50.9',1),
( 2 ,'V-neck T-Shirt','47.8' , 2 ),
( 3 , 'Ultra-soft tank top','1009.58',2),
( 4 , 'Cross-back training tank','1010',1),
( 5 , 'Bamboo thermal ski coat','1011',2),
( 6 , 'Thermal fleece jacket','1012',1) ;


-- Insert rows into table 'Orders' in schema '[dbo]'
INSERT INTO [dbo].[Orders]
( -- Columns to insert data into
 [id], [sid], [pid] , [uid]
)
VALUES
( -- First row: values for the columns in the list above
 1,2,1,1
),

( -- First row: values for the columns in the list above
 3,2,2,1
),

( -- First row: values for the columns in the list above
 5,2,3,1
),

( -- First row: values for the columns in the list above
 4,1,4,2
),
( -- First row: values for the columns in the list above
 2,1,5,2
);
-- Add more rows here
GO

-- Insert rows into table 'Shipment' in schema '[dbo]'
INSERT INTO [dbo].[Shipment]
( -- Columns to insert data into
[id] ,
[oid] ,
[orderdate] ,
[completeddate] ,
[qty] ,
[status]  
)
-- YYYYMMDD format
VALUES
( -- First row: values for the columns in the list above
 1,1,'20200818 10:34:09 AM' , null , 2 , 'pending'
),
( -- First row: values for the columns in the list above
 2,2,'20200820 10:34:09 AM' , null , 1 , 'pending'
),( -- First row: values for the columns in the list above
 3,2,'20200821 10:34:09 AM' , null , 1 , 'pending'
),( -- First row: values for the columns in the list above
 4,2,'20200822 10:34:09 AM' , null , 1 , 'pending'
),
( -- First row: values for the columns in the list above
 5,2,'20200823 10:34:09 AM' , null , 1 , 'pending'
);
GO