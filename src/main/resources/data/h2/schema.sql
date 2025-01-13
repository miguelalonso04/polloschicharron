CREATE TABLE FAMILIAS(

	ID				BIGINT			NOT NULL,
	NOMBRE			VARCHAR(100)	,
	
	PRIMARY KEY(ID)

);

CREATE TABLE PRODUCTOS(

	CODIGO			BIGINT			NOT NULL,
	NOMBRE			VARCHAR(100)	,
	FECHA_ALTA		DATE			,
	DESCATALOGADO	BOOLEAN			,
	ID_FAMILIA		BIGINT			,
	PRECIO			DOUBLE			,
	DESCRIPCION		VARCHAR(250)	,
	
	PRIMARY KEY(CODIGO),
	FOREIGN KEY(ID_FAMILIA) REFERENCES FAMILIAS (ID)

);

