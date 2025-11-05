-- My Refrences
SELECT *
FROM [Employee 1] e
JOIN Employee_Reference er on e.Id = er.Employee_Id
JOIN Reference r on r.Id = er.Ref_Id

-- My Certificates
SELECT *
FROM [Employee 1] e
JOIN Employee_Certificate ec on e.Id = ec.Employee_Id
JOIN "Certificate" c on c.Id = ec.Certificate_Id

-- My Departments
SELECT *
FROM [Employee 1] e
JOIN Employee_Department ed on e.Id = ed.Employee_Id
JOIN Department d on d.Id = ed.Dep_Id
JOIN [Employee 1] e2 on e2.Id = d.Supervisor_Employee_Id

-- Company and positions
SELECT *
FROM [Employee 1] e
JOIN Employee_Company ec on e.Id = ec.Employee_Id
JOIN Company c on c.Id = ec.Company_Id
JOIN Company_Position cp on cp.Company_Id = c.Id
JOIN Position p on cp.Position_Id = c.Id

SELECT * FROM
Company c
JOIN Company_Position cp on cp.Company_Id = c.Id
JOIN Position p on cp.Position_Id = c.Id

