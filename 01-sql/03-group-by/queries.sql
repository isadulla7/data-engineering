-- =====================================================================
-- 03-dars: Agregatsiya, GROUP BY va HAVING
-- Baza: dvdrental (PostgreSQL)
-- =====================================================================


-- ---------------------------------------------------------------------
-- 1. Agregat funksiyalar
-- ---------------------------------------------------------------------

SELECT COUNT(*)                    AS tolovlar_soni,
       COUNT(DISTINCT customer_id) AS mijozlar_soni,
       SUM(amount)                 AS umumiy_daromad,
       ROUND(AVG(amount), 2)       AS ortacha_tolov,
       MIN(payment_date)           AS birinchi_tolov,
       MAX(payment_date)           AS oxirgi_tolov
FROM payment;

-- COUNT(*) va COUNT(ustun)
SELECT COUNT(*)                      AS jami_ijaralar,
       COUNT(return_date)            AS qaytarilganlar,
       COUNT(*) - COUNT(return_date) AS qaytarilmaganlar
FROM rental;

-- AVG va NULL: farqni ko'ring
SELECT AVG(x)              AS null_tashlanadi,
       AVG(COALESCE(x, 0)) AS null_nol_deb
FROM (VALUES (10), (20), (NULL)) AS t(x);


-- ---------------------------------------------------------------------
-- 2. GROUP BY
-- ---------------------------------------------------------------------

SELECT rating,
       COUNT(*)              AS filmlar_soni,
       ROUND(AVG(length), 1) AS ortacha_uzunlik
FROM film
GROUP BY rating
ORDER BY filmlar_soni DESC;

-- Xato beradi (izohdan chiqarib sinab ko'ring):
-- SELECT rating, title, COUNT(*) FROM film GROUP BY rating;

SELECT rating,
       rental_rate,
       COUNT(*) AS soni
FROM film
GROUP BY rating, rental_rate
ORDER BY rating, rental_rate;

-- Oylik daromad
SELECT DATE_TRUNC('month', payment_date)::date AS oy,
       COUNT(*)                                AS tolovlar,
       SUM(amount)                             AS daromad
FROM payment
GROUP BY DATE_TRUNC('month', payment_date)
ORDER BY oy;


-- ---------------------------------------------------------------------
-- 3. HAVING
-- ---------------------------------------------------------------------

SELECT customer_id,
       COUNT(*)    AS tolovlar,
       SUM(amount) AS jami
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 150
ORDER BY jami DESC;

SELECT customer_id,
       COUNT(*) AS tolovlar
FROM payment
WHERE payment_date >= '2007-04-01'
  AND payment_date <  '2007-05-01'
GROUP BY customer_id
HAVING COUNT(*) > 10
ORDER BY tolovlar DESC;


-- ---------------------------------------------------------------------
-- 4. FILTER va shartli agregatsiya
-- ---------------------------------------------------------------------

SELECT COUNT(*)                                              AS jami,
       COUNT(*) FILTER (WHERE rating = 'G')                  AS g_filmlar,
       COUNT(*) FILTER (WHERE rating = 'R')                  AS r_filmlar,
       ROUND(AVG(length) FILTER (WHERE rating = 'PG-13'), 1) AS pg13_ortacha
FROM film;

SELECT SUM(CASE WHEN rating = 'G' THEN 1 ELSE 0 END) AS g_filmlar,
       SUM(CASE WHEN rating = 'R' THEN 1 ELSE 0 END) AS r_filmlar
FROM film;

-- Pivot
SELECT rental_rate,
       COUNT(*) FILTER (WHERE rating = 'G')     AS "G",
       COUNT(*) FILTER (WHERE rating = 'PG')    AS "PG",
       COUNT(*) FILTER (WHERE rating = 'PG-13') AS "PG-13",
       COUNT(*) FILTER (WHERE rating = 'R')     AS "R",
       COUNT(*) FILTER (WHERE rating = 'NC-17') AS "NC-17",
       COUNT(*)                                 AS jami
FROM film
GROUP BY rental_rate
ORDER BY rental_rate;


-- ---------------------------------------------------------------------
-- 5. ROLLUP
-- ---------------------------------------------------------------------

SELECT rating,
       rental_rate,
       COUNT(*) AS soni
FROM film
GROUP BY ROLLUP (rating, rental_rate)
ORDER BY rating, rental_rate;
