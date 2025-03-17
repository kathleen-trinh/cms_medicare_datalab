-- Create a database cms_data for data from CMS
CREATE DATABASE cms_data;

-- Create a schema for raw CMS data
CREATE SCHEMA cms_raw;

-- Create a schema for staging CMS data
CREATE SCHEMA cms_stg;

-- Create a schema for production CMS data
CREATE SCHEMA cms_prd;

-- Create a schema for data quality logging on the cms_data database
CREATE SCHEMA logs;