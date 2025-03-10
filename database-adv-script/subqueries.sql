/* Objective: Write both correlated and non-correlated subqueries.

Instructions:

Write a query to find all properties where the average rating is greater than 4.0 using a subquery.

Write a correlated subquery to find users who have made more than 3 bookings.
*/

SELECT * FROM properties as properties
WHERE (
    SELECT AVG(r.rating)
    FROM reviews as r
    WHERE r.property_id = p.id

    ) > 4.0
ORDER BY r;


SELECT * FROM users as users
WHERE (
    SELECT COUNT(b.id)
    FROM bookings as b 
    WHERE b.user_id = u.id
) > 3
ORDER BY b;
