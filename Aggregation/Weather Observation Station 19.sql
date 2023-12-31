Solution-1: Using MIN, MAX, POWER, SQRT & ROUND Function

SELECT ROUND(SQRT(POWER(MIN(LAT_N)-MAX(LAT_N),2) + POWER(MIN(LONG_W)-MAX(LONG_W),2)),4)
FROM STATION;



Solution-2: Using SET, MIN, MAX, POWER, SQRT & ROUND Function

SET @a := (SELECT MIN(LAT_N) FROM STATION);
SET @b := (SELECT MIN(LONG_W) FROM STATION);
SET @c := (SELECT MAX(LAT_N) FROM STATION);
SET @d := (SELECT MAX(LONG_W) FROM STATION);

SELECT ROUND(SQRT(POWER(@a-@c,2) + POWER(@b-@d,2)),4);
