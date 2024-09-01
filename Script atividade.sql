CREATE TABLE Departamentos (
  Dno INT PRIMARY KEY,
  Dnome VARCHAR(255) NOT NULL,
  Localizacao VARCHAR(255) NOT NULL
);

CREATE TABLE Empregados (
  Eno INT PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Endereco VARCHAR(255) NOT NULL,
  Salario DECIMAL(10, 2) NOT NULL,
  Dno INT NOT NULL,
  FOREIGN KEY (Dno) REFERENCES Departamentos(Dno)
);

INSERT INTO Departamentos (Dno, Dnome, Localizacao)
VALUES
  (1, 'Vendas', 'Fortaleza, CE'),
  (2, 'Marketing', 'São Paulo, SP'),
  (3, 'Pesquisa', 'Rio de Janeiro, RJ'),
  (4, 'Administração', 'Brasília, DF'),
  (5, 'Financeiro', 'Belo Horizonte, MG');

INSERT INTO Empregados (Eno, Nome, Endereco, Salario, Dno)
VALUES
  (1, 'João Silva', 'Rua 1, Fortaleza, CE', 5000.00, 1),
  (2, 'Maria Souza', 'Rua 2, São Paulo, SP', 6000.00, 2),
  (3, 'Pedro Oliveira', 'Rua 3, Rio de Janeiro, RJ', 7000.00, 3),
  (4, 'Ana Santos', 'Rua 4, Brasília, DF', 4000.00, 4),
  (5, 'Carlos Lima', 'Rua 5, Belo Horizonte, MG', 5500.00, 5);
  
SELECT Dname FROM DEPARTMENT;
  
SELECT COUNT(*) FROM EMPLOYEE WHERE Dno = (SELECT Dnumber FROM DEPARTMENT WHERE Dname = 'Research');
  
INSERT INTO EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno) VALUES
('João', 'A', 'Silva', '123123123', '1990-01-01', 'Rua ABC, 123', 'M', 50000, NULL, 1);

INSERT INTO DEPARTMENT (Dname, Dnumber, Mgr_ssn, Mgr_start_date) VALUES ('Datascience', 7, '123123123', '2022-01-01');

INSERT INTO EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno) VALUES
('Pedro', 'C', 'Oliveira', '222222222', '1992-03-01', 'Rua GHI, 789', 'M', 70000, '123123123', 7),
('Ana', 'D', 'Pereira', '111111111', '1998-09-01', 'Rua JKL, 012', 'F', 80000, '123123123', 7);

UPDATE EMPLOYEE SET Dno = 7 WHERE Ssn = '123123123';

UPDATE EMPLOYEE SET Salary = Salary * 1.135;

UPDATE DEPT_LOCATIONS SET Dlocation = 'Itapajé, CE' WHERE Dnumber = 4;