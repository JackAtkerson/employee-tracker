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
    (10, 'Manager', 125000, 1),
    (11, 'Assistant Manager', 100000, 1),
    (12, 'Shift Manager', 85000, 1),
    (20, 'Sales Representative', 85000, 2),
    (21, 'Sales Assistant', 60000, 2),
    (30, 'Marketing Coordinator', 90000, 3),
    (31, 'Marketing Analyst', 80000, 3),
    (32, 'Marketing Lead', 75000, 3),
    (40, 'Accountant', 100000, 4),
    (41, 'Payroll Assistant', 75000, 4),
    (42, 'Financial Analyst', 80000, 4),
    (50, 'Production Lead', 95000, 5),
    (51, 'Production Coordinator', 75000, 5),
    (52, 'Production Assistant', 60000, 5),
    (60, 'Intern', 40000, 6);

INSERT INTO employees (id, first_name, last_name, role_id, manager_id)
VALUES
    (1045, 'Megan', 'Douglas', 10, null),
    (1255, 'Dougie', 'Jones', 11, 1045),
    (1664, 'Eric', 'Williams', 20, 1045),
    (1976, 'Louise', 'Turner', 31, 1787),
    (2007, 'Cathy', 'Richards', 12, 1255),
    (2101, 'Norman', 'Grieves', 41, 1939),
    (1343, 'Lizzie', 'Miller', 21, 1664),
    (1787, 'Tom', 'Johnson', 30, 1045),
    (2327, 'James', 'Evans', 60, 1217),
    (1008, 'Eddie', 'Hogan', 50, null),
    (1855, 'Nicholas', 'McBride', 32, 1787),
    (7835, 'Erica', 'Thomas', 42, 1255),
    (1114, 'Jordan', 'Wilson', 41, 1939),
    (1939, 'Alex', 'Perez', 40, 1045),
    (3458, 'Greg', 'Clark', 52, 1008),
    (1786, 'Bernard', 'Goodwin', 51, 1008),
    (1217, 'Frank', 'Campbell', 12, 1255),
    (1644, 'Paula', 'Rivera', 21, 1664),
    (5549, 'Rick', 'Carter', 60, 2007);

