

-- Dar permisos de lectura desde el esquema NAOS_SUITE_PARAM_EXTENSION al de NAOS. 
-- NOTA: NAOS_SUITE es el usuario avanzado del entorno de PREPRODUCCI�N Y PRODUCCI�N DE NAOS 3 de SANDETEL.
grant select on NAOS_SUITE_PARAM_EXTENSION.PARAMETROS to NAOS_SUITE;  ---- CON EL USUARIO con las caracter�sticas y capacidades para la creaci�n y mantenimiento de los objetos del esquema AVANZADO
grant select on NAOS_SUITE_PARAM_EXTENSION.CRITERIOS_PARAMETROS to NAOS_SUITE --- CON EL USUARIO con las caracter�sticas y capacidades para la creaci�n y mantenimiento de los objetos del esquema AVANZADO


-- Crear sin�nimos de las tablas de 
create synonym SDK_INCIDENT for NAOS_SUITE.sdk_incident; --- CON EL USUARIO con las caracter�sticas y capacidades para la creaci�n y mantenimiento de los objetos del esquema AVANZADO
create synonym SDK_PHASESERVICE for NAOS_SUITE.SDK_PHASESERVICE; --- CON EL USUARIO con las caracter�sticas y capacidades para la creaci�n y mantenimiento de los objetos del esquema AVANZADO
create synonym SDK_ITSERVICE for NAOS_SUITE.SDK_ITSERVICE; --- CON EL USUARIO con las caracter�sticas y capacidades para la creaci�n y mantenimiento de los objetos del esquema AVANZADO
create synonym SDK_OPERATION for NAOS_SUITE.SDK_OPERATION; --- CON EL USUARIO con las caracter�sticas y capacidades para la creaci�n y mantenimiento de los objetos del esquema AVANZADO




