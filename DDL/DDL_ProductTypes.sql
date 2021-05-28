CREATE TABLE ProductTypes (
type_id 			INT UNIQUE IDENTITY(1, 1) CONSTRAINT PK_ProductTypes PRIMARY KEY,
type_name			NVARCHAR(30) NOT NULL,
task_list_id		INT CONSTRAINT FK_ProductTypes_TaskList FOREIGN KEY TaskList(task_list_id),
material_list_id	INT CONSTRAINT FR_ProductTypes_MaterialList FOREIGN KEY MaterialList(material_list_id),
type_currency		DECIMAL(10, 2) DEFAULT 0.00,
type_description	NVARCHAR(300) DEFAULT 'no description'
);