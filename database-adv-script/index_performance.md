# Index Performance Report

## Before Indexing
Using EXPLAIN on the JOIN query between bookings and users showed full table scan on both tables, with high row count and temporary table usage.

## After Indexing
After adding `idx_user_id_on_bookings`, EXPLAIN showed an indexed lookup on `bookings.user_id`, significantly reducing execution time.

## Example
Before:
- Rows Examined: 5000
- Type: ALL

After:
- Rows Examined: ~100
- Type: ref

Conclusion: Adding indexes on frequently joined or filtered columns significantly improves query performance and reduces resource usage.
