/* Objective: Write both correlated and non-correlated subqueries.

Instructions:

Write a query to find all properties where the average rating is greater than 4.0 using a subquery.

Write a correlated subquery to find users who have made more than 3 bookings.
*/

SELECT * FROM properties WHERE avg_rating > 4.0
ORDER BY avg_rating;


SELECT * FROM users WHERE bookings > 3
ORDER BY bookings;
