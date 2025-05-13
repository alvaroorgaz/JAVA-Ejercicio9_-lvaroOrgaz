-- Crear base de datos
CREATE DATABASE IF NOT EXISTS javapooSL;
USE javapooSL;

-- Crear tabla Clientes
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    email VARCHAR(100),
    telefono VARCHAR(15)
);

-- Crear tabla Proveedores
CREATE TABLE Proveedores (
    id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    cif VARCHAR(20),
    telefono VARCHAR(15)
);

-- Crear tabla Artículos
CREATE TABLE Articulos (
    id_articulo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    precio_unitario DECIMAL(10,2),
    stock INT
);

-- Crear tabla Facturas_Recibidas
CREATE TABLE Facturas_Recibidas (
    id_factura INT PRIMARY KEY AUTO_INCREMENT,
    id_proveedor INT,
    fecha DATE,
    total DECIMAL(10,2),
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
);

-- Crear tabla Ventas
CREATE TABLE Ventas (
    id_venta INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_articulo INT,
    cantidad INT,
    fecha_venta DATE,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_articulo) REFERENCES Articulos(id_articulo)
);

-- Insertar datos de prueba en Clientes
INSERT INTO Clientes (nombre, email, telefono) VALUES
('Juan Pérez', 'juanp@gmail.com', '600123456'),
('Lucía Gómez', 'lucia.gomez@gmail.com', '611987654');

-- Insertar datos de prueba en Proveedores
INSERT INTO Proveedores (nombre, cif, telefono) VALUES
('TechDistribuciones S.A.', 'A12345678', '913456789'),
('HardwarePro', 'B98765432', '914789123');

-- Insertar datos de prueba en Artículos
INSERT INTO Articulos (nombre, precio_unitario, stock) VALUES
('Monitor 24"', 149.99, 20),
('Teclado Mecánico', 69.90, 35);

-- Insertar datos de prueba en Facturas_Recibidas
INSERT INTO Facturas_Recibidas (id_proveedor, fecha, total) VALUES
(1, '2025-05-01', 3000.00),
(2, '2025-05-03', 1500.00);

-- Insertar datos de prueba en Ventas
INSERT INTO Ventas (id_cliente, id_articulo, cantidad, fecha_venta) VALUES
(1, 1, 2, '2025-05-05'),
(2, 2, 1, '2025-05-06');
