CREATE TABLE WorkersList (
workers_list_id 	INT CONSTRAINT PK_WorkersList PRIMARY KEY,
worker_id			INT CONSTRAINT FK_WorkersList_Workers FOREIGN KEY Workers(worker_id)	
);