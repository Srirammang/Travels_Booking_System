--CREATE DATABASE
CREATE DATABASE TRAVELS_BOOKING_SYSTEM
USE TRAVELS_BOOKING_SYSTEM
-- Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15)
);

-- Flights Table
CREATE TABLE Flights (
    flight_id INT PRIMARY KEY,
    flight_number VARCHAR(50),
    departure_city VARCHAR(50),
    arrival_city VARCHAR(50),
    departure_time DATETIME
);

-- Bookings Table
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    customer_id INT,
    flight_id INT,
    booking_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

-- Hotels Table
CREATE TABLE Hotels (
    hotel_id INT PRIMARY KEY,
    hotel_name VARCHAR(100),
    city VARCHAR(50),
    rating DECIMAL(2, 1),
    address VARCHAR(200)
);

-- Hotel_Bookings Table
CREATE TABLE Hotel_Bookings (
    hotel_booking_id INT PRIMARY KEY,
    customer_id INT,
    hotel_id INT,
    check_in_date DATE,
    check_out_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (hotel_id) REFERENCES Hotels(hotel_id)
);