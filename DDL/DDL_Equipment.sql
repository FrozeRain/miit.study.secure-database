CREATE TABLE Equipment (
equipment_id 		INT UNIQUE IDENTITY(1, 1) CONSTRAINT PK_Equipment PRIMARY KEY,
equipment_name		NVARCHAR(50) NOT NULL,
equipment_serial_id	NVARCHAR(32) NOT NULL CONSTRAINT SN_check CHECK (equipment_serial_id LIKE '[a-zA-z]{32}'),
equipment_count		INT DEFAULT 1	
);