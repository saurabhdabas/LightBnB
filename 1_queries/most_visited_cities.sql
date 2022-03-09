--a list of the most visited cities
--Select the name of the city and the number of reservations for that city.
--Order the results from highest number of reservations to lowest number of reservations.
SELECT city, COUNT(reservations.property_id) AS number_of_reservations
  FROM properties
  JOIN reservations ON properties.id = property_id
  GROUP BY properties.city
  ORDER BY COUNT(reservations.property_id)
  DESC;