# SQL Joins Queries

This repository contains SQL queries that demonstrate the use of different types of joins to retrieve data from an Airbnb-like database.

## Queries:

### 1. **INNER JOIN**
- Retrieves all bookings and the respective users who made those bookings.
- Only returns records where there is a matching user for each booking.

### 2. **LEFT JOIN**
- Retrieves all properties and their reviews, including properties with no reviews.
- If a property does not have a review, the result will show `NULL` for the review fields.

### 3. **FULL OUTER JOIN**
- Retrieves all users and all bookings, even if a user has no booking or a booking is not linked to a user.
- If there is no match between users and bookings, `NULL` values will appear for the missing data.

## Usage:
To execute these queries, simply run the `joins_queries.sql` file in your SQL database management system.

