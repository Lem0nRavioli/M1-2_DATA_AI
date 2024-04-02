USE hostel_db;

-- Inserts for table `room_type`
INSERT INTO `room_type` (`id`, `type`) VALUES
(1, 'Single'),
(2, 'Double'),
(3, 'Suite'),
(4, 'Twin'),
(5, 'King'),
(6, 'Queen'),
(7, 'Studio'),
(8, 'Penthouse'),
(9, 'Deluxe'),
(10, 'Economy');

-- Inserts for table `room`
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 4, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 3, 7),
(8, 4, 8),
(9, 2, 9),
(10, 1, 10);

-- Inserts for table `client`
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES
(1, 'John', 'Doe', '1990-05-15', 'john@example.com'),
(2, 'Jane', 'Doe', '1985-08-20', 'jane@example.com'),
(3, 'Alice', 'Smith', '1995-02-10', 'alice@example.com'),
(4, 'Bob', 'Johnson', '1980-12-25', 'bob@example.com'),
(5, 'Emily', 'Brown', '1992-09-18', 'emily@example.com'),
(6, 'Michael', 'Wilson', '1988-03-08', 'michael@example.com'),
(7, 'Samantha', 'Martinez', '1998-07-12', 'samantha@example.com'),
(8, 'William', 'Taylor', '1983-11-30', 'william@example.com'),
(9, 'Olivia', 'Thomas', '1993-04-22', 'olivia@example.com'),
(10, 'Daniel', 'Anderson', '1991-06-05', 'daniel@example.com');

-- Inserts for table `group`
INSERT INTO `group` (`id`, `contact_client_id`) VALUES
(1, 1),
(2, 3),
(3, 5),
(4, 7),
(5, 9),
(6, 2),
(7, 4),
(8, 6),
(9, 8),
(10, 10);

-- Inserts for table `booking`
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES
(1, '2024-02-01', '2024-02-10', 500, 1, 1, 1),
(2, '2024-02-02', '2024-02-12', 700, 2, 2, 2),
(3, '2024-02-03', '2024-02-15', 900, 3, 3, 3),
(4, '2024-02-04', '2024-02-14', 800, 4, 4, 4),
(5, '2024-02-05', '2024-02-17', 1000, 5, 5, 5),
(6, '2024-02-06', '2024-02-20', 1200, 6, 6, 6),
(7, '2024-02-07', '2024-02-09', 400, 7, 7, 7),
(8, '2024-02-08', '2024-02-21', 1400, 8, 8, 8),
(9, '2024-02-09', '2024-02-22', 1500, 9, 9, 9),
(10, '2024-02-10', '2024-02-23', 1600, 10, 10, 10);

-- Inserts for table `option`
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES
(1, 'Breakfast', 'Food', 10),
(2, 'Gym Access', 'Activity', 20),
(3, 'Airport Shuttle', 'Service', 30),
(4, 'Wi-Fi', 'Service', 15),
(5, 'Spa', 'Service', 40),
(6, 'Room Service', 'Service', 25),
(7, 'Parking', 'Service', 20),
(8, 'Laundry', 'Service', 25),
(9, 'Mini Bar', 'Service', 20),
(10, 'Pool Access', 'Activity', 25);

-- Inserts for table `booking_has_option`
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES
(1, 1, '2024-02-01', 0),
(1, 2, '2024-02-01', 0),
(2, 1, '2024-02-02', 0),
(3, 3, '2024-02-03', 1),
(4, 2, '2024-02-04', 1),
(5, 4, '2024-02-05', 0),
(6, 5, '2024-02-06', 0),
(7, 6, '2024-02-07', 0),
(8, 7, '2024-02-08', 0),
(9, 8, '2024-02-09', 0);

-- Inserts for table `group_has_client`
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10);
