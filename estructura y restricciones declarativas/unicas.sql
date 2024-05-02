ALTER TABLE Enfermeria ADD CONSTRAINT UK_Enfermeria UNIQUE (jefe);
ALTER TABLE Infraestructura_Medica ADD CONSTRAINT UK_Infraestructura_Medica UNIQUE (numero);
ALTER TABLE Infraestructura_Medica ADD CONSTRAINT UK_Infraestructura_Medica UNIQUE (piso);
ALTER TABLE Medicamentos_Prescripcion ADD CONSTRAINT UK_Medicamentos_Prescripcion UNIQUE (nombre);
ALTER TABLE Medicamentos_Venta_Libre ADD CONSTRAINT UK_Medicamentos_Venta_Libre UNIQUE (nombre);