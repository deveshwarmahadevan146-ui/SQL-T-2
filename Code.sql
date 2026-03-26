create database companyDB;

USE companyDB;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) DEFAULT 30000,
    email VARCHAR(100)
);

ALTER TABLE employees
ADD CONSTRAINT unique_email UNIQUE (email);

INSERT INTO employees (id, name, salary, email) VALUES
(1, 'Alice', 35000, 'alice@example.com'),
(2, 'Bob', 40000, 'bob@example.com'),
(3, 'Charlie', 30000, 'charlie@example.com'),
(4, 'David', 45000, 'david@example.com'),
(5, 'Eve', 32000, 'eve@example.com');

INSERT INTO employees (id, name, salary, email) VALUES
(6, 'Frank', 38000, 'alice@example.com');


DROP TABLE employees;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) DEFAULT 30000 CHECK (salary > 0),
    email VARCHAR(100) UNIQUE
);

select * from employees;