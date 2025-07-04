# Normalization to 3NF for Airbnb Database

## First Normal Form (1NF)

- Each table has a primary key
- All values in each column are atomic (no lists or nested values)
- No repeating groups

## Second Normal Form (2NF)

- Already satisfies 1NF
- No partial dependencies (non-key attributes depend on full primary key)

## Third Normal Form (3NF)

- Already satisfies 2NF
- No transitive dependencies (non-key attributes depend only on the primary key)

## Example

- `Booking`: depends on `user_id`, `property_id`, and stores start_date, end_date
- `Property`: only stores property-related details, not user info
- `Payment`: stores only booking-related payment info

✅ All entities in the ERD satisfy 3NF
