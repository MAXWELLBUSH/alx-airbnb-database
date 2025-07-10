-- Drop existing table if necessary
DROP TABLE IF EXISTS bookings;

-- Create partitioned bookings table by RANGE on start_date
CREATE TABLE bookings (
    id INT PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2020 VALUES LESS THAN (2021),
    PARTITION p2021 VALUES LESS THAN (2022),
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

-- (Optional) Insert sample data
-- INSERT INTO bookings VALUES (1, 101, 301, '2021-05-10', '2021-05-15');
