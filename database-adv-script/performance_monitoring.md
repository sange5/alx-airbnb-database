# Performance Monitoring and Refinement

## Objective
To monitor the performance of frequently used queries, identify bottlenecks, and implement schema adjustments such as adding indexes or refining table structures.

## Steps Taken
1. **Analyzed Queries**:
    - Used `EXPLAIN ANALYZE` to evaluate the performance of key queries, including retrieving bookings by user, booking details, and property information.

2. **Identified Bottlenecks**:
    - Full table scans were observed on `booking` and `property` tables.
    - Inefficient joins between `booking` and `user` tables due to missing indexes on foreign key columns.

3. **Implemented Changes**:
    - Added indexes on `user_id` and `property_id` in the `booking` table.
    - Created indexes on columns frequently used in filtering and sorting.
    - Refined joins to reduce unnecessary joins.

## Performance Improvements
1. **Before Optimization**:
    - Example query execution time: 200ms for retrieving bookings by `user_id`.
    - Full table scan for booking data.

2. **After Optimization**:
    - Execution time reduced to 50ms for the same query due to the addition of indexes on `user_id` and `property_id`.
    - Significant reduction in disk I/O.

## Conclusion
- Adding indexes on frequently queried columns significantly improved query performance, particularly for lookup operations based on `user_id` and `property_id`.
- Future optimization steps include analyzing more complex queries and considering further partitioning for large tables.

