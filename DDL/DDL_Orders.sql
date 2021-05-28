CREATE TABLE Orders (
order_id 			INT UNIQUE IDENTITY(1, 1) CONSTRAINT PK_Orders PRIMARY KEY,
client_id 			INT NOT NULL CONSTRAINT FK_Orders_Clients FOREIGN KEY Clients(client_id),
type_id				INT NOT NULL CONSTRAINT FK_Orders_ProductTypes FOREIGN KEY ProductTypes(type_id),
task_list_id		INT CONSTRAINT FK_Orders_TaskList FOREIGN KEY TaskList(task_list_id),
equipment_list_id	INT CONSTRAINT FK_Orders_EquipmentList FOREIGN KEY EquipmentList(equipment_list_id),
work_team_id		INT CONSTRAINT FK_Orders_WorkTeams FOREIGN KEY WorkTeams(work_team_id),
client_comment		NVARCHAR(300) DEFAULT 'no comment',
start_date			DATE
);