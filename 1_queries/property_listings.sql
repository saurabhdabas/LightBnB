--Show specific details about properties located in Vancouver including their average rating.

--Select the id, title, cost_per_night, and an average_rating from the properties table for properties located in Vancouver.
--Order the results from lowest cost_per_night to highest cost_per_night.
--Limit the number of results to 10.
--Only show listings that have a rating >= 4 stars.

SELECT properties.id, title, cost_per_night, AVG(property_reviews.rating)
  FROM properties
  JOIN property_reviews ON properties.id = property_id
  WHERE city = 'Vancouver' AND property_reviews.rating >= 4
  GROUP BY properties.id
  ORDER BY cost_per_night
  ASC
  LIMIT 10;
