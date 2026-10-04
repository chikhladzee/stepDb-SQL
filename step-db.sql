CREATE DATABASE StepDb;

DROP DATABASE StepDb; -- წავშალე db არასწორად შექმნის გამო..

USE StepDb;

CREATE TABLE Students (
    Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    Name NVARCHAR(20) NOT NULL,
    LastName NVARCHAR(20) NOT NULL,
    Age INT,
    Email VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Teachers (
    Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    Name NVARCHAR(20) NOT NULL,
    LastName NVARCHAR(20) NOT NULL,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Subjects (
    ID UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    Name NVARCHAR(100),
    DurationHours INT
);

INSERT INTO Students (Name, LastName, Age, Email)
VALUES
    ('Giorgi', 'Beridze', 20, 'giorgi.beridze@gmail.com'),
    ('Nino', 'Kapanadze', 22, 'nino.k@gmail.com'),
    ('Luka', 'Gevorgyan', 19, 'luka.g@yahoo.com'),
    ('Mariam', 'Tsereteli', 21, 'mariam.ts@gmail.com'),
    ('Dachi', 'Svanidze', 23, 'dachi.s@hotmail.com'),
    ('Ana', 'Shengelia', 20, 'ana.sh@gmail.com'),
    ('Saba', 'Mchedlishvili', 24, 'saba.mch@yahoo.com'),
    ('Salome', 'Kvaratskhelia', 22, 'salome.kv@gmail.com'),
    ('Irakli', 'Nozadze', 25, 'irakli.n@outlook.com'),
    ('Tamta', 'Gelashvili', 21, 'tamta.g@gmail.com');

INSERT INTO Teachers (Name, LastName, PhoneNumber, Email)
VALUES
    ('Levan', 'Maisuradze', '599112233', 'levan.m@university.edu.ge'),
    ('Daviti', 'Kharabadze', NULL, 'davit.kh@university.edu.ge'),
    ('Elene', 'Gorgaslidze', '597334455', 'elene.g@university.edu.ge'),
    ('Giga', 'Lomidze', NULL, 'giga.l@university.edu.ge'),
    ('Zurabi', 'Abashidze', '591556677', 'zura.a@university.edu.ge'),
    ('Natia', 'Kiknadze', NULL, 'natia.k@university.edu.ge'),
    ('Vakhtang', 'Dolidze', '599778899', 'vakho.d@university.edu.ge'),
    ('Maka', 'Janashia', '598889900', 'maka.j@university.edu.ge'),
    ('Sopho', 'Chanturia', NULL, 'sopho.ch@university.edu.ge'),
    ('Tornike', 'Bakradze', '596001122', 'toko.b@university.edu.ge');

INSERT INTO Subjects (Name, DurationHours)
VALUES
    ('C# / .NET Backend Development', 120),
    ('Angular Frontend Development', 90),
    ('MS SQL Server & Database Architecture', 60),
    ('HTML5 & SCSS Advanced', 40),
    ('JavaScript / TypeScript Foundations', 80),
    ('Docker & Microservices Architecture', 45),
    ('Git & DevOps Workflows', 30),
    ('Data Structures & Algorithms', 70),
    ('REST API Design & Clean Architecture', 50),
    ('Entity Framework Core & LINQ', 55);


-- დაასელექტეთ 5 სტუდენტი რომლის ასაკი მეტია 20 ზე
SELECT TOP 5 *
FROM Students
WHERE Age > 20;

-- დაასელექტეთ ის საგნები რომლის საათების ხანგძლივობა მეტია 20 საათზე.
SELECT *
FROM Subjects
WHERE DurationHours > 20;

-- დაასელექტეთ ის მასწავლებლები რომლებსაც არ აქვთ შევსებული ტელეფონის ნომერი.
SELECT *
FROM Teachers
WHERE PhoneNumber IS NULL;
