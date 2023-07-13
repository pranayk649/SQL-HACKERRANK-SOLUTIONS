Solution-1: Using LEFT & RIGHT Function

SELECT DISTINCT CITY FROM STATION
WHERE LEFT(CITY,1) NOT IN ('a','e','i','o','u','A','E','I','O','U')
AND RIGHT(CITY,1) NOT IN ('a','e','i','o','u','A','E','I','O','U');


Solution-2: Using REGEXP_LIKE Function

SELECT DISTINCT CITY FROM STATION
WHERE NOT REGEXP_LIKE(CITY, '^[AEIOU]')
AND NOT REGEXP_LIKE(CITY, '[AEIOU]$',);