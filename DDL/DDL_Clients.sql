CREATE TABLE Clients (
client_id 			INT UNIQUE IDENTITY(1, 1) CONSTRAINT PK_Clients PRIMARY KEY,
client_fullname		NVARCHAR(30) NOT NULL,
client_phone		NVARCHAR(30) NOT NULL CONSTRAINT PN_check CHECK (client_phone LIKE '\+7 \(\d{3}\) \d{3}-\d{2}-\d{2}'),
client_email		NVARCHAR(30) CONSTRAINT E_check CHECK (client_email LIKE '\w+@\w+\.\w+'),
client_address		NVARCHAR(50)
);