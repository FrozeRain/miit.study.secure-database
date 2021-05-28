CREATE TABLE MaterialList (
material_list_id 	INT CONSTRAINT PK_MaterialList PRIMARY KEY,
material_id			INT CONSTRAINT FK_MaterialList_Material FOREIGN KEY Material(material_id)	
);