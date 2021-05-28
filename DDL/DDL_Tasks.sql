CREATE TABLE Tasks (
task_id 			INT UNIQUE IDENTITY(1, 1) CONSTRAINT PK_Tasks PRIMARY KEY,
task_name			NVARCHAR(50) NOT NULL,
task_time_require	NVARCHAR(50),
task_description	NVARCHAR(300) DEFAULT 'no description'
);