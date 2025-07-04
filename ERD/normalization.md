# Normalization to 3NF for Airbnb Database

## First Normal Form (1NF)

- Ensured each table has a primary key
- Each column contains atomic values
- No repeating groups or arrays in any row

✅ Example: In the `User` table, name and email are stored in separate columns.

---

## Second Normal Form (2NF)

- Database is already in 1NF
- Removed partial dependencies (i.e., no non-key column depends on part of a composite key)

✅ Example: In the `Booking` table, all non-key columns like `start_date`, `end_date`, and `status` depend on the whole primary key `id`.

---

## Third Normal Form (3NF)

- Database is already in 2NF
- Removed transitive dependencies (non-key columns only depend on the primary key)

✅ Example:
- `Property` table only stores columns related to the property (title, location, host_id)
- `Payment` only depends on `booking_id`, not on `user_id` or `property_id`

---

## Final Notes

- Each entity represents a real-world object and has a unique primary key.
- All foreign keys maintain proper references and prevent redundancy.
- No calculated fields or derived data is stored.

✅ The database design adheres to 3NF.
