/*TABLA CANAL*/
ALTER TABLE canal auto_increment=1;
insert into canal(can_nombre,can_tipo)
values
    ('Facebook Ads', 'Red social'),
    ('Búsqueda de Google', 'Buscador'),
    ('Boletín de Correo', 'Email'),
    ('Instagram', 'Red social'),
    ('Venta Directa', 'Email');
    
update canal 
set can_nombre = 'Instagram', can_tipo= 'Red social'
where can_id_canal=1;

select can_id_canal, can_nombre, can_tipo
from canal;

delete from canal where can_id_canal = 5;

/*TABLA CLIENTE*/
INSERT INTO cliente( cli_nombre, cli_apellido, cli_ciudad, cli_correo, cli_telefono, cli_fecha_registro)
VALUES('Nicol', 'Anacona', 'Popayán', 'nicol@gmail.com', '3001234567', '2026-09-12'),
    ('María', 'Gómez', 'Cali', 'maria@gmail.com', '3109876543', '2026-09-12'),
    ('Julian', 'López', 'Moca', 'Julian@gmail.com', '3154567890', '2026-09-12'),
    ('Ana', 'Martínez', 'Medellín', 'ana@gmail.com', '3201234567', '2026-09-12'),
    ('Pedro', 'Rodríguez', 'Pasto', 'pedro@gmail.com', '3017654321', '2026-09-12');
    
    update cliente set cli_nombre= 'Nicol', cli_apellido= 'Anacona',cli_correo='nicol@gmail.com' where cli_id_cliente=1;
	update cliente set cli_nombre= 'Julian', cli_apellido= 'Lopez',cli_ciudad='MOcoa',cli_correo='julian@gmail.com' where cli_id_cliente=3;

    
    select cli_nombre, cli_apellido, cli_ciudad, cli_correo, cli_telefono, cli_fecha_registro from cliente;
    
/*TABLA CONVERSACIONES*/
INSERT INTO conversion (con_tipo, con_valor, con_fecha, cliente_cli_id_cliente)
VALUES 
    ('compra', 10.0, '2026-09-10', 1),
    ('registro', 3.0, '2026-09-11', 2),
    ('suscripcion', 7.9, '2026-09-12', 3),
    ('compra', 5.0, '2026-09-12', 4),
    ('suscripcion', 1.50, '2026-09-13', 5);
        select con_tipo, con_valor, con_fecha, cliente_cli_id_cliente from conversion;
/*TABLA Compaña*/
INSERT INTO campania (cam_nombre, cam_presupuesto, cam_fecha_inicio, cam_fecha_final, canal_can_id_canal)
VALUES 
    ('Campaña Verano', 550.000, '2026-06-01', '2026-06-30', 1),
    ('Regreso a Clases', 3200.500, '2026-08-01', '2026-08-31', 2),
    ('San valentin', 1500.000, '2026-09-01', '2026-10-15', 3),
    ('Black Friday', 10000.0, '2026-11-20', '2026-11-30', 4),
    ('Especial Navideño', 8500.750, '2026-12-01', '2026-12-25', 1);
    SELECT * FROM campania;
    /*TABLA INTERACION*/
    INSERT INTO interaccion (int_tipo, int_fecha, campania_cam_id_campania, cliente_cli_id_cliente)
VALUES 
    ('clic', '2026-09-10', 1, 1),
    ('visita', '2026-09-11', 2, 2),
    ('comentario', '2026-09-12', 3, 3),
    ('descarga', '2026-09-12', 4, 4),
    ('clic', '2026-09-12', 5, 5);
    select* from interaccion;