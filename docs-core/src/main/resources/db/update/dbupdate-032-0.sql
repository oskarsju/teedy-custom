-- DBUPDATE-032-0.SQL

-- Allow long comment/note content
alter table T_COMMENT alter column COM_CONTENT_C type text;

-- Update the database version
update T_CONFIG set CFG_VALUE_C = '32' where CFG_ID_C = 'DB_VERSION';
