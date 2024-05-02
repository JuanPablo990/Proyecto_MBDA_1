-- CICLO UNO: Tablas
CREATE TABLE hospital(
    id_hospital VARCHAR2(10) NOT NULL,
    nombre VARCHAR2(40) NOT NULL,
    direccion VARCHAR2(70) NOT NULL,
    ciudad VARCHAR2(20) NOT NULL,
    pais VARCHAR2(20) NOT NULL
);

CREATE TABLE paciente(
    id_paciente VARCHAR2(10) NOT NULL,
    nombre VARCHAR2(40) NOT NULL,
    edad NUMBER(3) NOT NULL,
    genero VARCHAR2(1) NOT NULL,
    telefono NUMBER(7) NOT NULL,
    correo VARCHAR2(22) NOT NULL,
    cita VARCHAR2(70),
    hospital VARCHAR2(10) NOT NULL
);

CREATE TABLE plan_medico(
    tipo_plan VARCHAR2(43) NOT NULL,
    cobertura VARCHAR2(200),
    costo NUMBER(9) NOT NULL,
    paciente VARCHAR2(10) NOT NULL
);

CREATE TABLE historial_medico(
    enfermedades_previas VARCHAR2(1000),
    alergias VARCHAR(1220),
    medicamentos_actuales VARCHAR2(500) NOT NULL,
    paciente VARCHAR2(10) NOT NULL
);

CREATE TABLE cita(
    id_cita VARCHAR2(70) NOT NULL,
    fecha DATE NOT NULL,
    hora DATE NOT NULL,
    paciente VARCHAR2(10) NOT NULL,
    doctor VARCHAR2(100) NOT NULL,
    personal_administrativo VARCHAR2(33) NOT NULL
);

CREATE TABLE Observacion(
    id_O VARCHAR2(16) NOT NULL,
    fecha DATE NOT NULL,
    comentario VARCHAR2(200) NOT NULL,
    Historial_Medico VARCHAR2(150) NOT NULL,
    Medicamentos_Prescripcion NUMBER(43),
    Doctor VARCHAR2(100) NOT NULL
);

CREATE TABLE Recursos_humanos(
    id_recurso VARCHAR2(21),
    fecha_contratacion DATE,
    Hospital VARCHAR2(10)
);

CREATE TABLE Personal(
    id_personal VARCHAR2(18) NOT NULL,
    nombre VARCHAR2(40) NOT NULL,
    años_experiencia NUMBER(3) NOT NULL,
    fecha_contratacion DATE NOT NULL,
    Recursos_humanos VARCHAR2(21) NOT NULL
);

CREATE TABLE Personal_Administrativo(
    puesto VARCHAR2(4) NOT NULL,
    departamento VARCHAR2(12) NOT NULL,
    Personal NUMBER(18) NOT NULL,
    Cita VARCHAR2(70) NOT NULL
);

CREATE TABLE Personal_Medico(
    turno NUMBER(4) NOT NULL,
    licencia VARCHAR2(3) NOT NULL,
    Personal NUMBER(18) NOT NULL 
);

CREATE TABLE Enfermeria(
    jefe VARCHAR2(27) NOT NULL,
    Personal_Medico NUMBER(4) NOT NULL
);

CREATE TABLE Doctor(
    especialidad VARCHAR2(32) NOT NULL,
    certificaciones VARCHAR2(100) NOT NULL,
    Personal_medico NUMBER(18) NOT NULL
);

CREATE TABLE Infraestructura_Medica(
    id_infraestructura VARCHAR2(13) NOT NULL,
    fecha_construccion DATE NOT NULL,
    numero NUMBER(10) NOT NULL,
    piso VARCHAR2(3) NOT NULL,
    tamaño VARCHAR2(16) NOT NULL,
    tipo VARCHAR2(22) NOT NULL,
    capacidad NUMBER(4) NOT NULL,
    Equipos_Medicos NUMBER(21) NOT NULL,
    Recursos_humanos VARCHAR2(21) NOT NULL,
    Farmacia_Hospital VARCHAR2(24) NOT NULL,
    Hospital VARCHAR2(10) NOT NULL
);

CREATE TABLE Equipos_Medicos(
    id_equipo VARCHAR2(21) NOT NULL,
    nombre VARCHAR2(40) NOT NULL,
    tipo VARCHAR2(21) NOT NULL,
    marca VARCHAR2(34) NOT NULL,
    modelo VARCHAR2(10) NOT NULL,
    fecha_adquisicion DATE NOT NULL
);

CREATE TABLE Farmacia_Hospital(
    id_farmacia VARCHAR2(24) NOT NULL,
    fecha_apertura DATE NOT NULL
);

CREATE TABLE Inventario_prescripcion(
    id_I VARCHAR2(23) NOT NULL,
    stock NUMBER(22) NOT NULL,
    Medicamentos_Prescripcion NUMBER(100) NOT NULL,
    Farmacia_Hospital VARCHAR2(24) NOT NULL
);

CREATE TABLE Medicamentos_Prescripcion(
    id_medicamento VARCHAR2(21) NOT NULL,
    nombre VARCHAR2(40) NOT NULL,
    dosis NUMBER(4) NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    fabricante VARCHAR2(105) NOT NULL
);

CREATE TABLE Inventario_libre(
    id_L VARCHAR2(21) NOT NULL,
    stock NUMBER(23) NOT NULL,
    Medicamentos_Venta_Libre NUMBER(10),
    Farmacia_Hospital VARCHAR2(100) NOT NULL
);

CREATE TABLE Medicamentos_Venta_Libre (
    id_medicamento VARCHAR2(22) NOT NULL,
    nombre VARCHAR2(40) NOT NULL,
    dosis NUMBER(4) NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    fabricante VARCHAR2(100) NOT NULL
);

CREATE TABLE Suministros_Medicos(
    id_suministro VARCHAR2(24) NOT NULL,
    nombre VARCHAR2(40) NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    fabricante VARCHAR2(100) NOT NULL,
    Farmacia_Hospital VARCHAR2(200) NOT NULL
);