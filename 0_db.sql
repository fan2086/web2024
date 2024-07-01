DROP DATABASE IF EXISTS examdb;

DROP ROLE IF EXISTS examdb;

-- 创建一个登陆角色（用户），用户名examdb, 密码为pass
CREATE ROLE examdb LOGIN PASSWORD 'pass' -- password: pass
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE;

CREATE DATABASE examdb WITH OWNER = examdb ENCODING = 'UTF8';
   

