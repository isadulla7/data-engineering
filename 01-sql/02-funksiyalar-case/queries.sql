-- =====================================================================
-- 02-dars: Funksiyalar, CASE WHEN va DISTINCT
-- Baza: dvdrental (PostgreSQL)
-- =====================================================================


-- ---------------------------------------------------------------------
-- 1. Matn funksiyalari
-- ---------------------------------------------------------------------

SELECT first_name || ' ' || last_name  AS toliq_ism,
       INITCAP(first_name)              AS chiroyli_ism,
       LOWER(email)                     AS email,
       SPLIT_PART(email, '@', 2)        AS domen,
       LENGTH(first_name)               AS ism_uzunligi,
       LEFT(last_name, 1) || '.'        AS familiya_bosh_harfi
FROM customer
LIMIT 10;

SELECT TRIM('   ali   ')                    AS trim_natija,
       REPLACE('a-b-c', '-', '/')           AS replace_natija,
       SUBSTRING('Samarqand', 1, 3)         AS substring_natija,
       POSITION('@' IN 'ali@mail.uz')       AS position_natija;

-- || va CONCAT farqi NULL bilan
SELECT 'Ali' || NULL         AS pipe_bilan,
       CONCAT('Ali', NULL)   AS concat_bilan;


-- ---------------------------------------------------------------------
-- 2. Son funksiyalari
-- ---------------------------------------------------------------------

SELECT ROUND(4.567, 2)  AS round_,
       CEIL(4.1)        AS ceil_,
       FLOOR(4.9)       AS floor_,
       ABS(-7)          AS abs_,
       125 % 60         AS qoldiq,
       POWER(2, 10)     AS daraja;

-- Butun bo'lish tuzog'i
SELECT 7 / 2           AS butun,
       7 / 2.0         AS haqiqiy,
       7::numeric / 2  AS cast_bilan;


-- ---------------------------------------------------------------------
-- 3. CAST va ::
-- ---------------------------------------------------------------------

SELECT CAST('2026-11-13' AS date) AS sana1,
       '2026-11-13'::date          AS sana2,
       '42'::int + 8               AS son;

-- float muammosi
SELECT 0.1::float + 0.2::float      AS float_natija,
       0.1::numeric + 0.2::numeric  AS numeric_natija;


-- ---------------------------------------------------------------------
-- 4. Sana va vaqt
-- ---------------------------------------------------------------------

SELECT NOW(), CURRENT_DATE;

SELECT payment_id,
       payment_date,
       EXTRACT(YEAR  FROM payment_date)   AS yil,
       EXTRACT(MONTH FROM payment_date)   AS oy,
       EXTRACT(DOW   FROM payment_date)   AS hafta_kuni,
       DATE_TRUNC('month', payment_date)  AS oy_boshi,
       TO_CHAR(payment_date, 'YYYY-MM')   AS oy_matn,
       payment_date::date                 AS faqat_sana
FROM payment
LIMIT 10;

SELECT rental_id,
       rental_date,
       return_date,
       return_date - rental_date                    AS davomiylik,
       EXTRACT(DAY FROM return_date - rental_date)  AS kunlar
FROM rental
WHERE return_date IS NOT NULL
LIMIT 10;

SELECT CURRENT_DATE + INTERVAL '7 days'     AS bir_haftadan_keyin,
       AGE(CURRENT_DATE, DATE '2000-01-01') AS yosh;


-- ---------------------------------------------------------------------
-- 5. CASE WHEN
-- ---------------------------------------------------------------------

SELECT title,
       length,
       CASE
           WHEN length < 60  THEN 'Qisqa'
           WHEN length < 120 THEN 'O''rtacha'
           ELSE 'Uzun'
       END AS uzunlik_toifasi
FROM film;

SELECT title,
       rating,
       CASE rating
           WHEN 'G'     THEN 'Barcha yoshlar'
           WHEN 'PG'    THEN 'Ota-ona nazoratida'
           WHEN 'PG-13' THEN '13 yoshdan'
           WHEN 'R'     THEN '17 yoshdan (kattalar bilan)'
           WHEN 'NC-17' THEN 'Faqat 18+'
           ELSE 'Noma''lum'
       END AS yosh_chegarasi
FROM film;


-- ---------------------------------------------------------------------
-- 6. COALESCE va NULLIF
-- ---------------------------------------------------------------------

SELECT 100.0 * 5 / NULLIF(0, 0) AS nolga_bolish_himoyasi;

SELECT address_id,
       postal_code,
       COALESCE(NULLIF(TRIM(postal_code), ''), 'Noma''lum') AS tozalangan
FROM address;


-- ---------------------------------------------------------------------
-- 7. DISTINCT va DISTINCT ON
-- ---------------------------------------------------------------------

SELECT DISTINCT rating
FROM film
ORDER BY rating;

SELECT DISTINCT rating, rental_rate
FROM film
ORDER BY rating, rental_rate;

-- Har bir reytingdagi eng uzun film
SELECT DISTINCT ON (rating)
       rating, title, length
FROM film
ORDER BY rating, length DESC;
