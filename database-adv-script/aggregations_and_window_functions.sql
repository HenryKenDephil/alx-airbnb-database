/* 
Objective: Use SQL aggregation and window functions to analyze data.

Instructions:

Write a query to find the total number of bookings made by each user, using the COUNT function and GROUP BY clause.

Use a window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have received.
*/

SELECT b.user_id, COUNT(b.id) AS total_bookings
FROM bookings AS b
GROUP BY b.user_id;

--use of window function
SELECT p.id, p.name, COUNT(b.id) AS total_bookings,
    ROW_NUMBER()V OVER(ORDER BY COUNT(b.id) DESC) AS ranking
FROM properties as p
LEFT JOIN bookings as b ON p.id = b.property_id
GROUP BY p.id, p.name
ORDER BY ranking;