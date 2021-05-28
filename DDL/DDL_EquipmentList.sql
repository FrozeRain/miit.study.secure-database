CREATE TABLE EquipmentList (
equipment_list_id 	INT CONSTRAINT PK_EquipmentList PRIMARY KEY,
equipment_id		INT CONSTRAINT FK_EquipmentList_Equipment FOREIGN KEY Equipment(equipment_id)	
);