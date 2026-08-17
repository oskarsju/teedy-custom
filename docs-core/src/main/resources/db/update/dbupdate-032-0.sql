-- DBUPDATE-032-0.SQL

!PGSQL!alter table T_COMMENT alter column COM_CONTENT_C type text;
!H2!alter table T_COMMENT alter column COM_CONTENT_C longvarchar;

-- Update the database version
update T_CONFIG set CFG_VALUE_C = '32' where CFG_ID_C = 'DB_VERSION';
