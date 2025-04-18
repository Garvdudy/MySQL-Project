-- Viewing tables >>
show tables;







-- Inserting data in patient table
insert into juls_walkin_clinic.patients (first_name, last_name, dob, contact, email, gender) values
('John', 'Doe', '1985-02-19', '4161234567', 'john.doe@gmail.com', 'Male'),
('Jane', 'Smith', '1980-06-18', '4162345678', 'jane.smith@gmail.com', 'Female'),
('Emily', 'Johnson', '1992-03-25', '4163456789', 'emily.johnson@gmail.com', 'Female'),
('Michael', 'Brown', '1995-09-30', '4164567890', 'michael.brown@gmail.com', 'Male'),
('David', 'Williams', '1987-08-15', '4165678901', 'david.williams@gmail.com', 'Male'),
('Sarah', 'Davis', '1986-11-11', '4166789012', 'sarah.davis@gmail.com', 'Female'),
('James', 'Miller', '1993-12-01', '4167890123', 'james.miller@gmail.com', 'Male'),
('Sophia', 'Garcia', '1988-07-07', '4168901234', 'sophia.garcia@gmail.com', 'Female'),
('Olivia', 'Martinez', '1990-04-14', '4169012345', 'olivia.martinez@gmail.com', 'Female'),
('Ethan', 'Rodriguez', '2000-05-10', '4160123456', 'ethan.rodriguez@gmail.com', 'Male');







-- Inserting data in doctor table
insert into juls_walkin_clinic.doctors (first_name, last_name, contact, email, specialization, shift) values
('James', 'Anderson', '6471112222', 'james.anderson@clinic.com', 'Cardiology', 'Morning'),
('Sophia', 'White', '6471113333', 'sophia.white@clinic.com', 'Neurology', 'Evening'),
('Alexander', 'Clark', '6471114444', 'alexander.clark@clinic.com', 'Radiology', 'Night'),
('Olivia', 'Martin', '6471115555', 'olivia.martin@clinic.com', 'Pediatrics', 'Morning'),
('Benjamin', 'King', '6471116666', 'benjamin.king@clinic.com', 'Orthopedics', 'Evening');





-- Inserting data in shift_schedule table
insert into juls_walkin_clinic.shift_schedule (employee_id, shift_start_time, shift_end_time, shift_day) values
(101, '2025-04-01 08:00:00', '2025-04-01 16:00:00', 'Monday'),
(102, '2025-04-03 16:00:00', '2025-04-03 00:00:00', 'Tuesday'),
(103, '2025-04-05 08:00:00', '2025-04-05 16:00:00', 'Wednesday'),
(104, '2025-04-07 16:00:00', '2025-04-07 00:00:00', 'Thursday'),
(105, '2025-04-09 08:00:00', '2025-04-09 16:00:00', 'Friday'),
(106, '2025-04-11 16:00:00', '2025-04-11 00:00:00', 'Saturday'),
(107, '2025-04-13 08:00:00', '2025-04-13 16:00:00', 'Sunday'),
(108, '2025-04-15 16:00:00', '2025-04-15 00:00:00', 'Monday'),
(109, '2025-04-17 08:00:00', '2025-04-17 16:00:00', 'Tuesday'),
(110, '2025-04-19 16:00:00', '2025-04-19 00:00:00', 'Wednesday');








-- Inserting data in work_hours table
insert into juls_walkin_clinic.work_hours (employee_id, total_hours, pay_per_hour, week_start_date, week_end_date) values
(101, 40.0, 25.00, '2025-03-31', '2025-04-06'),
(102, 35.5, 22.00, '2025-03-31', '2025-04-06'),
(103, 42.0, 27.50, '2025-03-31', '2025-04-06'),
(104, 38.0, 24.00, '2025-03-31', '2025-04-06'),
(105, 30.0, 23.00, '2025-03-31', '2025-04-06'),
(106, 44.0, 28.00, '2025-03-31', '2025-04-06'),
(107, 36.5, 26.00, '2025-03-31', '2025-04-06'),
(108, 40.0, 30.00, '2025-03-31', '2025-04-06'),
(109, 32.0, 21.00, '2025-03-31', '2025-04-06'),
(110, 45.0, 29.00, '2025-03-31', '2025-04-06');






-- Inserting data in nurses table
insert into juls_walkin_clinic.nurses (first_name, last_name, contact, email, employee_id) values
('Charlotte', 'Moore', '4371110000', 'charlotte.moore@clinic.com', 101),
('Amelia', 'Taylor', '4371111111', 'amelia.taylor@clinic.com', 102),
('Grace', 'Jackson', '4371112222', 'grace.jackson@clinic.com', 103),
('Isabella', 'Harris', '4371113333', 'isabella.harris@clinic.com', 104),
('Mia', 'Lee', '4371114444', 'mia.lee@clinic.com', 105);









-- Inserting data in appointments table
insert into juls_walkin_clinic.appointments (patient_id, doctor_id, appointment_date, appointment_status) values
(1, 1, '2025-04-01 10:00:00', 'Booked'),
(2, 2, '2025-04-03 11:00:00', 'Arrived'),
(3, 3, '2025-04-05 12:00:00', 'Checked-in'),
(4, 4, '2025-04-07 13:00:00', 'Checked-out'),
(5, 5, '2025-04-09 14:00:00', 'Cancelled'),
(6, 1, '2025-04-11 10:00:00', 'Left Without Treatment'),
(7, 2, '2025-04-13 11:00:00', 'Booked'),
(8, 3, '2025-04-15 12:00:00', 'Arrived'),
(9, 4, '2025-04-17 13:00:00', 'Checked-in'),
(10, 5, '2025-04-19 14:00:00', 'Checked-out');







-- Inserting data in visits_recode table
insert into juls_walkin_clinic.visits_recode (appointment_id, patient_id, doctor_id, visit_date) values
(1, 1, 1, '2025-04-02 09:00:00'),
(2, 2, 2, '2025-04-04 10:00:00'),
(3, 3, 3, '2025-04-06 11:30:00'),
(4, 4, 4, '2025-04-08 13:00:00'),
(5, 5, 5, '2025-04-10 14:30:00'),
(6, 6, 1, '2025-04-12 15:00:00'),
(7, 7, 2, '2025-04-14 09:30:00'),
(8, 8, 3, '2025-04-16 10:15:00'),
(9, 9, 4, '2025-04-18 11:45:00'),
(10, 10, 5, '2025-04-20 12:00:00');







-- Inserting data in vitals table
insert into juls_walkin_clinic.vitals (nurse_id, patient_id, blood_pressure, temperature, height, weight) values
(1, 1, '120/80', 36.6, 170.2, 68.5),
(2, 2, '130/85', 37.2, 165.4, 72.3),
(3, 3, '110/70', 36.9, 180.1, 80.0),
(4, 4, '140/90', 38.1, 175.0, 85.6),
(5, 5, '125/82', 37.0, 160.0, 60.2),
(1, 6, '118/76', 36.8, 168.5, 70.1),
(2, 7, '135/88', 37.5, 172.4, 78.3),
(3, 8, '145/95', 38.0, 169.0, 82.0),
(4, 9, '122/80', 36.7, 174.3, 75.5),
(5, 10, '128/84', 37.1, 178.2, 88.4);







-- Inserting data in lab_tests table
insert into juls_walkin_clinic.lab_tests (doctor_id, test_type, test_results) values
(1, 'Blood Test', 'Normal levels'),
(2, 'X-Ray', 'Fracture detected'),
(3, 'MRI', 'No abnormalities'),
(4, 'Urine Test', 'High glucose'),
(5, 'CT Scan', 'Mild swelling observed'),
(1, 'Thyroid Test', 'TSH high'),
(2, 'Liver Function', 'Slight enzyme elevation'),
(3, 'Allergy Test', 'Dust allergy confirmed'),
(4, 'COVID-19 Test', 'Negative'),
(5, 'Cholesterol Test', 'LDL elevated');







-- Inserting data in payments table
insert into juls_walkin_clinic.payments (patient_id, payment_date, payment_amount, payment_method, payment_status) values
(1, '2025-04-02 10:00:00', 150.00, 'Cash', 'Paid'),
(2, '2025-04-04 11:00:00', 200.00, 'Credit Card', 'Paid'),
(3, '2025-04-06 09:30:00', 180.00, 'Debit Card', 'Pending'),
(4, '2025-04-08 14:00:00', 220.00, 'Insurance', 'Paid'),
(5, '2025-04-10 13:45:00', 130.00, 'Cash', 'Failed'),
(6, '2025-04-12 15:15:00', 160.00, 'Credit Card', 'Paid'),
(7, '2025-04-14 10:30:00', 190.00, 'Debit Card', 'Paid'),
(8, '2025-04-16 11:15:00', 250.00, 'Insurance', 'Pending'),
(9, '2025-04-18 12:45:00', 140.00, 'Cash', 'Paid'),
(10, '2025-04-20 13:00:00', 210.00, 'Credit Card', 'Paid');








-- Inserting data in test_results table
insert into juls_walkin_clinic.test_results (test_id, test_result, test_date, result_date) values
(1, 'Normal levels', '2024-03-01', '2024-03-02'),
(2, 'Fracture detected', '2024-03-03', '2024-03-03'),
(3, 'No abnormalities', '2024-03-05', '2024-03-06'),
(4, 'High glucose', '2024-03-06', '2024-03-07'),
(5, 'Mild swelling', '2024-03-08', '2024-03-09'),
(6, 'TSH high', '2024-03-10', '2024-03-11'),
(7, 'Enzyme elevation', '2024-03-12', '2024-03-13'),
(8, 'Dust allergy', '2024-03-13', '2024-03-14'),
(9, 'COVID Negative', '2024-03-15', '2024-03-15'),
(10, 'LDL elevated', '2024-03-16', '2024-03-17');







-- Inserting data in secretaries table
insert into juls_walkin_clinic.secretaries (employee_id, first_name, last_name, phone, email) values
(106, 'Linda', 'Park', '4370001001', 'linda.park@clinic.com'),
(107, 'Lois', 'Lane', '4370001002', 'lois.lane@clinic.com');







-- Inserting data in admin_staff table
insert into juls_walkin_clinic.admin_staff (employee_id, first_name, last_name, phone, email) values
(108, 'Amanda', 'Waller', '4371111001', 'amanda.waller@clinic.com'),
(109, 'Maxwell', 'Lord', '4371112002', 'maxwell.lord@clinic.com'),
(110, 'Etta', 'Candy', '4371113003', 'etta.candy@clinic.com');