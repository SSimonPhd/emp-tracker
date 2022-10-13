DROP DATABASE IF EXISTS employeetracker_db;

CREATE DATABASE employeetracker_db;

USE employeetracker_db;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name varchar(30) NOT NULL
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary decimal NOT NULL,
  department_id INT,
FOREIGN KEY(department_id) REFERENCES department (id) ON DELETE CASCADE
);
CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name varchar(30) NOT NULL,
  last_name varchar(30) NOT NULL,
  role_id INT,
  manager_id INT,
FOREIGN KEY (role_id) REFERENCES role (id) ON DELETE CASCADE,
FOREIGN KEY (manager_id) REFERENCES employee (id) ON DELETE CASCADE
);

insert INTO department(name)
values('Sales');
insert INTO department(name)
values('Engineering');
insert INTO department(name)
values('Finance');
insert INTO department(name)
values('Legal');


insert INTO role (title, salary, department_id)
values('Sales Manager', 50000, 1);
insert INTO role(title, salary, department_id)
values('Salesperson',  40000, 1);
insert INTO role(title, salary, department_id)
values('Lead Engineer', 50000, 2);
insert INTO role(title, salary, department_id)
values('Engineer', 45000, 2);
insert INTO role(title, salary, department_id)
values('Lead Accountant', 45000, 3);
insert INTO role(title, salary, department_id)
values('Accountant', 40000, 3);
insert INTO role(title, salary, department_id)
values('Legal Supervisor',  60000, 4);


insert INTO employee (first_name, last_name, role_id, manager_id)
values('John', 'Johnson', 1, NULL);
insert INTO employee(first_name, last_name, role_id, manager_id)
values('Peter', 'Peterson', 2, 1);
insert INTO employee(first_name, last_name, role_id, manager_id)
values('Sue', 'Sueson', 3, NULL);
insert INTO employee(first_name, last_name, role_id, manager_id)
values('Robert', 'Robertson', 4, 3);
insert INTO employee(first_name, last_name, role_id, manager_id)
values('Marge', 'Margeson', 5, NULL);
insert INTO employee(first_name, last_name, role_id, manager_id)
values('George', 'Georgeson', 6, 5);
insert INTO employee(first_name, last_name, role_id, manager_id)
values('Sara', 'Sarason', 7, NULL);







