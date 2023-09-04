SELECT *
FROM owners
LEFT JOIN vehicles ON 
owners.id=vehicles.owner_id

SELECT first_name, last_name, COUNT(vehicles.id)
FROM owners
JOIN vehicles ON
owners.id=vehicles.owner_id
GROUP BY owners.id
ORDER BY first_name ASC 

SELECT first_name, last_name, ROUND(AVG(price)), COUNT(vehicles.id)
FROM owners
JOIN vehicles ON
owners.id=vehicles.owner_id
GROUP BY owners.id
HAVING AVG(price) > 10000
ORDER BY first_name DESC

