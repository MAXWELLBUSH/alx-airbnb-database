# ER Diagram for Airbnb Database

## Entities

- **User**: id, name, email, phone, password
- **Property**: id, title, location, price, host_id
- **Booking**: id, user_id, property_id, start_date, end_date, status
- **Payment**: id, booking_id, amount, method, status
- **Review**: id, user_id, property_id, rating, comment

## Relationships

- A User can book many Properties
- A Property belongs to a User
- A Booking is made by a User and linked to a Property
- A Booking can have one Payment
- A User can leave many Reviews for Properties
![alt text](<ERD image-1.png>)