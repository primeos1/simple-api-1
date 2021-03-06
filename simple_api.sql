DROP DATABASE IF EXISTS simple_api;
CREATE DATABASE simple_api;

\c simple_api;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE users (
  id uuid UNIQUE DEFAULT uuid_generate_v4 (),
  email VARCHAR(128) NOT NULL UNIQUE,
  password VARCHAR(128) NOT NULL,
  registered BIGINT,
  token VARCHAR(128) UNIQUE,
  createdtime BIGINT,
  emailVerified BOOLEAN,
  tokenusedbefore BOOLEAN,
  reset_password_token VARCHAR(128) UNIQUE,
  reset_password_expires BIGINT,
  reset_password_token_used BOOLEAN,
  PRIMARY KEY (email)
);