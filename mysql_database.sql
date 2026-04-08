CREATE DATABASE IF NOT EXISTS Hospital;
USE Hospital;

CREATE TABLE IF NOT EXISTS appointment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Full_Name VARCHAR(100) NOT NULL,
    Email_id VARCHAR(100) NOT NULL,
    Mobile_no VARCHAR(15) NOT NULL,
    Specialist VARCHAR(100) NOT NULL,
    Appointment_date DATE,
    Appointment_time TIME
);

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    Email_id VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(12) NOT NULL
);

CREATE TABLE IF NOT EXISTS doctor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Full_name VARCHAR(255) NOT NULL,
    Email_id VARCHAR(255) NOT NULL UNIQUE,
    Password VARCHAR(12) NOT NULL,
    Mobile_no VARCHAR(12) NOT NULL UNIQUE,
    Specialization VARCHAR(255) NOT NULL,
    Registration_date DATE
);

CREATE TABLE IF NOT EXISTS registration (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Full_name VARCHAR(255) NOT NULL,
    Email_id VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(12) NOT NULL,
    Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS contact_submissions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    Email_id VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

INSERT INTO admin (username, Email_id, password)
VALUES ('Pratik Khot', 'pratikkhot@company.com', 'pratik123');
