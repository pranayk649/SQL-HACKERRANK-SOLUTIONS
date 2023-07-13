Solution-1: Using LIKE Function

SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE 'A%'
OR CITY LIKE 'E%'
OR CITY LIKE 'I%'
OR CITY LIKE 'O%'
OR CITY LIKE 'U%';


Solution-2: Using LEFT Function

SELECT DISTINCT CITY FROM STATION
WHERE LEFT(CITY,1) IN ('a','e','i','o','u','A','E','I','O','U');



Solution-3: Using REGEXP_LIKE Function

SELECT DISTINCT CITY FROM STATION
WHERE REGEXP_LIKE(CITY, '^[AEIOU]');


