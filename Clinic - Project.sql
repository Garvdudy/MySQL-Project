create database juls_walkin_clinic;
use juls_walkin_clinic;

-- Creating Patient Table
create table patients(
    patient_id int primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    dob date not null,
    contact varchar(15) not null unique,
    email varchar(100) unique,
    gender enum('name', 'female', 'other') not null
);

-- Creating Doctors Table
create table doctors(
    doctor_id int primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    contact varchar(15) not null unique,
    email varchar(100) unique,
    specialization varchar(100) not null,
    shift varchar(100) not null
);

-- Creating Nurses Table
create table nurses(
    nurse_id int primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    contact varchar(15) not null unique,
    email varchar(100) unique,
    employee_id int not null,
    foreign key (employee_id) references work_hours(employee_id),
    foreign key (employee_id) references shift_schedule(employee_id)
);

-- Creating Appointments Table
create table appointments(
    appointment_id int primary key auto_increment,
    patient_id int not null,
    doctor_id int not null,
    appointment_date datetime not null,
    foreign key (patient_id) references patients(patient_id),
    foreign key (doctor_id) references doctors(doctor_id),
    appointment_status enum('booked', 'cancelled', 'arrived', 'checked-in', 'checked-out', 'left without treatment') not null
);

-- Creating Visits_Recode Table
create table visits_recode(
    visit_id int primary key auto_increment,
    appointment_id int not null,
    patient_id int not null,
    doctor_id int not null,
    visit_date datetime not null,
    foreign key (patient_id) references patients(patient_id),
    foreign key (doctor_id) references doctors(doctor_id),
    foreign key (appointment_id) references appointments(appointment_id)
);

-- Creating Vitals Table
create table vitals(
    vitals_id int primary key auto_increment,
    nurse_id int not null,
    patient_id int not null,
    blood_pressure varchar(20),
    temperature decimal(5, 2),
    height decimal(5, 2),
    weight decimal(5, 2),
    foreign key (nurse_id) references nurses(nurse_id),
    foreign key (patient_id) references patients(patient_id)
);

-- Creating Lab-Tests Table
create table lab_tests(
    test_id int primary key auto_increment,
    doctor_id int not null,
    test_type varchar(100) not null,
    test_results text,
    foreign key (doctor_id) references doctors(doctor_id)
);

-- Creating Payments Table
create table payments(
    payment_id int primary key auto_increment,
    patient_id int not null,
    payment_date datetime not null,
    payment_amount decimal(10, 2) not null,
    payment_method enum('cash', 'credit card', 'debit card', 'insurance') not null,
    payment_status enum('paid', 'pending', 'failed') not null,
    foreign key (patient_id) references patients(patient_id)
);

-- Creating Shift_Schedule Table
create table shift_schedule(
    employee_id int primary key,
    shift_start_time datetime not null,
    shift_end_time datetime not null,
    shift_day enum('monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday') not null
);

-- Creating Work_Hours Table
create table work_hours(
    employee_id int primary key,
    total_hours decimal(5, 2) not null,
    pay_per_hour decimal(10, 2) not null,
    week_start_date date not null,
    week_end_date date not null
);

-- Creating Test_Results Table
create table test_results(
    test_id int primary key,
    test_result text not null,
    test_date date not null,
    result_date date not null,
    foreign key (test_id) references lab_tests(test_id)
);

-- Creating Secretaries Table
create table secretaries(
    employee_id int primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    phone varchar(15) not null,
    email varchar(100) unique,
    foreign key (employee_id) references work_hours(employee_id),
    foreign key (employee_id) references shift_schedule(employee_id)
);

-- Creating Admin_Staff Table
create table admin_staff(
    employee_id int primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    phone varchar(15) not null,
    email varchar(100) unique,
    foreign key (employee_id) references work_hours(employee_id),
    foreign key (employee_id) references shift_schedule(employee_id)
);
