SELECT SUM(dim_stores.staff_numbers) AS total_staff
FROM dim_stores
WHERE dim_stores.country_code = 'GB';