-- =====================================================================
-- 01-dars: SELECT, WHERE, ORDER BY, LIMIT va NULL
-- Baza: dvdrental (PostgreSQL)
-- Har bir so'rovni alohida ishga tushiring (DBeaver: Ctrl+Enter)
-- =====================================================================


-- ---------------------------------------------------------------------
-- 1. SELECT
-- ---------------------------------------------------------------------

-- Jadval bilan tanishish
SELECT * FROM film LIMIT 5;

-- Kerakli ustunlar
SELECT title, rental_rate, length
FROM film;

-- Alias va hisoblangan ustunlar
SELECT title                    AS nomi,
       length                   AS daqiqa,
       ROUND(length / 60.0, 1)  AS soat,
       rental_rate * 2          AS ikki_kunlik_narx
FROM film;

-- Butun songa bo'lish tuzog'i: farqini ko'ring
SELECT 125 / 60   AS butun_bolish,
       125 / 60.0 AS haqiqiy_bolish;


-- ---------------------------------------------------------------------
-- 2. WHERE
-- ---------------------------------------------------------------------

SELECT title, rental_rate, rating
FROM film
WHERE rental_rate = 4.99
  AND rating = 'PG-13';

SELECT title, length
FROM film
WHERE length > 180;

SELECT title, length
FROM film
WHERE length BETWEEN 60 AND 90;

SELECT title, rating
FROM film
WHERE rating IN ('G', 'PG');

-- LIKE va ILIKE
SELECT title FROM film WHERE title LIKE 'A%';
SELECT title FROM film WHERE title LIKE '%Man';
SELECT first_name FROM customer WHERE first_name ILIKE '%ann%';

-- AND / OR ustuvorligi: ikkala natijadagi qatorlar sonini solishtiring
SELECT COUNT(*) FROM film
WHERE rating = 'G' OR rating = 'PG' AND length > 120;

SELECT COUNT(*) FROM film
WHERE (rating = 'G' OR rating = 'PG') AND length > 120;


-- ---------------------------------------------------------------------
-- 3. ORDER BY va LIMIT
-- ---------------------------------------------------------------------

SELECT title, length
FROM film
ORDER BY length DESC, title ASC
LIMIT 10;

-- Sahifalash: 2-sahifa
SELECT title, length
FROM film
ORDER BY length DESC, title
LIMIT 10 OFFSET 10;


-- ---------------------------------------------------------------------
-- 4. NULL
-- ---------------------------------------------------------------------

-- Noto'g'ri: hech narsa qaytarmaydi
SELECT * FROM rental WHERE return_date = NULL;

-- To'g'ri: hali qaytarilmagan ijaralar
SELECT rental_id, rental_date, customer_id
FROM rental
WHERE return_date IS NULL;

-- NULL bilan taqqoslash natijalari
SELECT 5 = 5          AS a,
       5 = NULL       AS b,
       NULL = NULL    AS c,
       NULL IS NULL   AS d,
       5 + NULL       AS e;

-- COALESCE
SELECT address,
       COALESCE(address2, '(yo''q)') AS address2
FROM address;

-- IS DISTINCT FROM: NULL'ni ham hisobga oladigan "teng emas"
SELECT COUNT(*) FROM film WHERE rating IS DISTINCT FROM 'R';


-- ---------------------------------------------------------------------
-- 5. Bajarilish tartibi
-- ---------------------------------------------------------------------

-- Xato beradi: column "daqiqa" does not exist
-- SELECT title, length AS daqiqa FROM film WHERE daqiqa > 100;

-- Ishlaydi
SELECT title, length AS daqiqa
FROM film
ORDER BY daqiqa DESC
LIMIT 5;
