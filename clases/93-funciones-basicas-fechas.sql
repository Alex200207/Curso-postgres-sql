
SELECT
    now(),                         -- Fecha y hora actual con zona horaria
    CURRENT_DATE,                 -- Solo la fecha actual
    CURRENT_TIME,                 -- Solo la hora actual con zona horaria
    CURRENT_USER,                 -- Usuario de PostgreSQL que ejecuta la consulta
    date_part('minutes', now());  -- Extrae los minutos de la hora actual
    
    --docs
    -- https://www.postgresql.org/docs/8.1/functions-datetime.html
    -- https://neon.com/postgresql/date-functions/date_part