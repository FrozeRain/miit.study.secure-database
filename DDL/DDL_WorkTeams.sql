CREATE TABLE WorkTeams (
work_team_id 			INT UNIQUE IDENTITY(1, 1) CONSTRAINT PK_WorkTeams PRIMARY KEY,
task_in_progress_id		INT CONSTRAINT FK_WorkTeams_Tasks FOREIGN KEY Tasks(task_id),
lead_worker_id			INT NOT NULL CONSTRAINT FK_WorkTeams_Workers FOREIGN KEY Workers(worker_id),
workers_list_id			INT NOT NULL CONSTRAINT FK_WorkTeams_WorkersList FOREIGN KEY WorkersList(workers_list_id)	
);