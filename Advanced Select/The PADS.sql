SELECT CONCAT (NAME, '(', LEFT (OCCUPATION, 1), ')') AS NAME_WITH_FIRST_LETTER_OF_OCCUPATION
FROM  OCCUPATIONS
ORDER BY  NAME;

SELECT CONCAT ('There are a total of ', COUNT(OCCUPATION),' ', LOWER(OCCUPATION),'s.') AS TOTALS
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION), OCCUPATION;
