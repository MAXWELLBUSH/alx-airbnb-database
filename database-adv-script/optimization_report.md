# Query Optimization Report

## Initial Query Description
The original query retrieved:
- All bookings
- Corresponding user details
- Property details
- Payment information

```sql
SELECT *
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.payment_id = payments.id;
