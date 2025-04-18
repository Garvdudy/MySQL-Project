-- Performing ALTER, UPDATE, DELETE, and INSERT


-- Altering table Patient (Adding Address Column to send lab-results throuogh Mail)
alter table juls_walkin_clinic.patients
add address varchar(100);


-- Altering payment_date in payments
alter table payments
add column payment_only_date date,
add column payment_only_time time;
-- Now Updating the columns
update payments
set 
  payment_only_date = date(payment_date),
  payment_only_time = time(payment_date);



-- Updating Contact in nurse table
update juls_walkin_clinic.nurses
set contact = '4370001111'
where nurse_id = 1;




-- Deleting an appoinment from Appoinment Table where appoinment id is foreign key in visits record
delete from visits_recode
where appointment_id in (
    select appointment_id from appointments where appointment_status = 'Cancelled'
);
delete from appointments
where appointment_status = 'Cancelled';



-- Inserting A new Doctor to the Doctors Table
insert into juls_walkin_clinic.doctors (first_name, last_name, specialization, contact, email, shift)
values ('Mark', 'Addision', 'Neurology', '6471117777', 'stephen.strange@clinic.com', 'Afternoon');