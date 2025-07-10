# Database Performance Monitoring Report

## Tools Used
- `EXPLAIN`
- `SHOW PROFILE`
- Indexing

## Observations
### Before Optimization
- Queries used full table scans (`ALL`) on large tables.
- Joins were inefficient due to missing indexes.
- Response time was slow (e.g., 1.2 seconds).

### After Optimization
- Added indexes to:
  - `bookings.user_id`
  - `bookings.property_id`
  - `bookings.payment_id`
- Replaced `SELECT *` with specific fields
- Queries now use `ref` or `eq_ref` in EXPLAIN

## EXPLAIN Output Comparison

| Table     | Before     | After    |
|-----------|------------|----------|
| bookings  | ALL        | ref      |
| users     | ALL        | eq_ref   |
| properties| ALL        | eq_ref   |
| payments  | ALL        | eq_ref   |

## Recommendations
- Continue to avoid `SELECT *`
- Use indexes on JOIN and WHERE columns
- Partition large tables like `bookings` for long-term scalability

## Conclusion
These improvements significantly reduced query execution time and improved database responsiveness.
