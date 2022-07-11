INSERT INTO departments (id, name)
VALUES
    (1, 'Administration'),
    (2, 'Sales'),
    (3, 'Marketing'),
    (4, 'Finance'),
    (5, 'Production'),
    (6, 'Interns');

INSERT INTO roles (id, title, salary, department_id)
VALUES
    (1, 'Manager', 125000, 1),
    (2, 'Assistant Manager', 100000, 1),
    (3, 'Shift Manager', 85000, 1),

    (4, 'Sales Representative', 85000, 2),
    (5, 'Sales Assistant', 60000, 2),

    (6, 'Marketing Coordinator', 90000, 3),
    (7, 'Marketing Analyst', 80000, 3),
    (8, 'Marketing Lead', 75000, 3),

    (9, 'Accountant', 100000, 4),
    (10, 'Payroll Assistant', 75000, 4),
    (11, 'Financial Analyst', 80000, 4),

    (12, 'Production Lead', 95000, 5),
    (13, 'Production Coordinator', 75000, 5),
    (14, 'Production Assistant', 60000, 5),

    (15, 'Intern', 40000, 6);

INSERT INTO employees (id, first_name, last_name, role_id, manager_id)
VALUES
    (1, 'Megan', 'Douglas', 1, null),
    (2, 'Dougie', 'Jones', 2, 1),
    (3, 'Eric', 'Williams', 4, 1),
    (4, 'Louise', 'Turner', 7, 8),
    (5, 'Cathy', 'Richards', 3, 1),
    (6, 'Norman', 'Grieves', 10, 14),
    (7, 'Lizzie', 'Miller', 5, 3),
    (8, 'Tom', 'Johnson', 6, 1),
    (9, 'James', 'Evans', 15, 17),
    (10, 'Eddie', 'Hogan', 12, null),
    (11, 'Nicholas', 'McBride', 8, 8),
    (12, 'Erica', 'Thomas', 11, 1),
    (13, 'Jordan', 'Wilson', 10, 14),
    (14, 'Alex', 'Perez', 9, 1),
    (15, 'Greg', 'Clark', 14, 10),
    (16, 'Bernard', 'Goodwin', 13, 10),
    (17, 'Frank', 'Campbell', 12, 1),
    (18, 'Paula', 'Rivera', 5, 3),
    (19, 'Rick', 'Carter', 15, 5);

