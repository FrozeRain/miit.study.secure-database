CREATE TABLE Materials (
material_id 			INT UNIQUE IDENTITY(1, 1) CONSTRAINT PK_Materials PRIMARY KEY,
material_name			NVARCHAR(50) NOT NULL,
material_cost_per_kg	DECIMAL(10, 2) DEFAULT 0.00
);