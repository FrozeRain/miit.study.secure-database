CREATE TABLE Workers (
worker_id 			INT UNIQUE IDENTITY(1, 1) CONSTRAINT PK_Workers PRIMARY KEY,
worker_fullname		NVARCHAR(50) NOT NULL,
worker_phone		NVARCHAR(30) NOT NULL CONSTRAINT PN_check CHECK (worker_phone LIKE '\+7 \(\d{3}\) \d{3}-\d{2}-\d{2}'),
worker_hire_date	DATE NOT NULL,
worker_birthday		DATE
);