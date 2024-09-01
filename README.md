# Theme Park Database Project
This project showcases a sample SQL database for managing theme park operations like visitor information, ticket sales, ride reservations, and attendance tracking. The database was created using SQL Server Management Studio (SSMS) and includes several tables with relevant relationships to demonstrate common database operations.
# Features
Visitor Management: Tracks visitor details such as names, contact information, and date of birth.

Ticket Sales: Stores information about ticket purchases linked to specific visitors.

Ride Reservations: Manages ride reservations, linking visitors to specific rides and times.

Attendance Tracking: Records visitor attendance for different days, helping to analyze visitor flow and peak times.
# How to View
Clone the repository: git clone https://github.com/YourGitHubUsername/ThemeParkDB-Project.git

Import the SQL script. 

# Sample Query

INSERT INTO Visitors (FirstName, LastName, DateOfBirth, Email, PhoneNumber)
VALUES ('Walt', 'Disney', '1901-12-05', 'walt.e.disney@disney.com', '1001197100');

INSERT INTO Tickets (VisitorID, TicketType, PurchaseDate, Price)
VALUES (1, 'Adult', '2024-01-01', 142.71);

INSERT INTO Rides (RideName, Capacity, Location, OperatingHours)
VALUES ('Tianas Bayou Adventure', 1200, 'Frontierland', '09:00-22:00');

INSERT INTO Reservations (VisitorID, RideID, ReservationDate)
VALUES (1, 1, '2024-07-19');

INSERT INTO Attendance (VisitorID, Date, EntryTime, ExitTime)
VALUES (1, '2024-09-01', '12:45', '12:56');

