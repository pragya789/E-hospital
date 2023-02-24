CREATE DATABASE ehospital;

USE ehospital;

CREATE TABLE patients (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  age INT(11) NOT NULL,
  gender VARCHAR(10) NOT NULL,
  email VARCHAR(50) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  address VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE doctors (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  department VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  address VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE appointments (
  id INT(11) NOT NULL AUTO_INCREMENT,
  patient INT(11) NOT NULL,
  doctor INT(11) NOT NULL,
  date DATE NOT NULL,
  time TIME NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (patient) REFERENCES patients(id),
  FOREIGN KEY (doctor) REFERENCES doctors(id)
);

CREATE TABLE medical_records (
  id INT(11) NOT NULL AUTO_INCREMENT,
  patient INT(11) NOT NULL,
  doctor INT(11) NOT NULL,
  date DATE NOT NULL,
  diagnosis TEXT NOT NULL,
  treatment TEXT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (patient) REFERENCES patients(id),
  FOREIGN KEY (doctor) REFERENCES doctors(id)
);
