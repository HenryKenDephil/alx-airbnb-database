/* 
Write Complex Queries with Joins
Objective: Master SQL joins by writing complex queries using different types of joins.

Instructions:

Write a query using an INNER JOIN to retrieve all bookings and the respective users who made those bookings.

Write a query using aLEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews.

Write a query using a FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.
*/


SELECT * FROM bookings 
INNER JOIN users
ON users.user_ID = bookings.bookings_ID;


SELECT * FROM properties
LEFT JOIN reviews
ON reviews.properties_ID = properties.properties_ID
ORDER BY reviews;


SELECT * users, bookings FROM users, bookings
FULL JOIN bookings
ON bookings.properties_ID = users.user_ID;