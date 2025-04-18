-- Creating Queries To Check Reports and Data


-- List all patients with the names of the nurses who took their vitals:
select p.first_name as patient_first_name, n.first_name as nurse_first_name, v.blood_pressure
from juls_walkin_clinic.vitals v
inner join juls_walkin_clinic.patients p on v.patient_id = p.patient_id
inner join juls_walkin_clinic.nurses n on v.nurse_id = n.nurse_id;




-- Selecting full name , date, time and payment amount of patients:
select concat(p.first_name, " ", p.last_name) as 'Name', round(pay.payment_amount,0) as 'Amount', date(pay.payment_date) as 'Date', time(pay.payment_date) as 'Time'
from juls_walkin_clinic.patients p
left join juls_walkin_clinic.payments pay on p.patient_id = pay.patient_id;




-- Selecting all employees full name and employee id using union:
select nur.employee_id, concat(nur.first_name, ', ', nur.last_name) as eployees_full_name from juls_walkin_clinic.nurses as nur
union
select sec.employee_id, concat(sec.first_name, ', ', sec.last_name) from juls_walkin_clinic.secretaries as sec
union
select adm.employee_id, concat(adm.first_name, ', ', adm.last_name) from juls_walkin_clinic.admin_staff as adm;




-- Creating a view of patients with their lood pressure and temperature:
create view PatientVitals as
select p.patient_id, p.last_name, v.blood_pressure, v.temperature
from juls_walkin_clinic.patients as p
join juls_walkin_clinic.vitals as v
on p.patient_id = v.patient_id;
-- Checking view
select *
from juls_walkin_clinic.patientvitals;




-- Create a procedure to get payments above average payments done by patients:
delimiter //
create procedure GetHighPayments()
begin
    select payment_id, payment_amount, payment_method from juls_walkin_clinic.payments
    where payment_amount > (select avg(payment_amount) from juls_walkin_clinic.payments);
end //
delimiter ;
call GetHighPayments();


-- Create a procedure to get payments above a certain amount:
delimiter $$
create procedure GetCertainAmount(in min_amount decimal(10,2))
begin
    select patient_id, payment_amount, payment_status from juls_walkin_clinic.payments
    where payment_amount > min_amount;
end $$
delimiter ;
call GetCertainAmount(200);



-- Basic Queries:

-- Total revenue collected:
select round(sum(payment_amount),0) as Total_Revenue
from juls_walkin_clinic.payments;



-- Number of lab tests done:
select count(*) as Total_Tests
from juls_walkin_clinic.lab_tests;



-- Average patient weight, tallest and shortest patient:
select round(avg(weight),1) as avg_weight, round(min(height),1) as min_height, round(max(height),1) as max_height
from juls_walkin_clinic.vitals;