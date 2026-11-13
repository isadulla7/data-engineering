# ✍️ 02-dars mashqlari

> Yechimni ochishdan oldin **kamida 10–15 daqiqa** o'zingiz urinib ko'ring.

## 🟢 Oson

**1.** Har bir mijoz uchun `"FAMILIYA, Ism"` ko'rinishidagi bitta ustun chiqaring (masalan, `SMITH, Mary`).

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT UPPER(last_name) || ', ' || INITCAP(first_name) AS mijoz
FROM customer;
```
</details>

**2.** Filmlar nomi va nomidagi belgilar soni. Eng uzun nomli 10 tasi.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT title, LENGTH(title) AS uzunlik
FROM film
ORDER BY uzunlik DESC, title
LIMIT 10;
```
</details>

**3.** `film` jadvalida qanday ijara narxlari (`rental_rate`) bor? Har birini bir marta chiqaring.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT DISTINCT rental_rate
FROM film
ORDER BY rental_rate;
```
</details>

**4.** To'lovlarning id'si, summasi va to'lov qilingan **sana** (vaqtsiz).

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT payment_id, amount, payment_date::date AS sana
FROM payment;
```
</details>

## 🟡 O'rta

**5.** Filmlarni narx toifasiga ajrating: `rental_rate` 0.99 → `Arzon`, 2.99 → `O'rta`, 4.99 → `Qimmat`, boshqasi → `Noma'lum`.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT title,
       rental_rate,
       CASE rental_rate
           WHEN 0.99 THEN 'Arzon'
           WHEN 2.99 THEN 'O''rta'
           WHEN 4.99 THEN 'Qimmat'
           ELSE 'Noma''lum'
       END AS narx_toifasi
FROM film;
```
</details>

**6.** Hafta oxirida (shanba yoki yakshanba) qilingan to'lovlar. *Ishora:* `EXTRACT(DOW …)` da 0 = yakshanba, 6 = shanba.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT payment_id, payment_date, amount
FROM payment
WHERE EXTRACT(DOW FROM payment_date) IN (0, 6);
```
</details>

**7.** Har bir ijara uchun: id, ijara sanasi va holat. `return_date` bo'lmasa `Qaytarilmagan`, ijara 5 kundan uzun bo'lsa `Kechikkan`, aks holda `O'z vaqtida`.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT rental_id,
       rental_date,
       return_date,
       CASE
           WHEN return_date IS NULL                          THEN 'Qaytarilmagan'
           WHEN return_date - rental_date > INTERVAL '5 days' THEN 'Kechikkan'
           ELSE 'O''z vaqtida'
       END AS holat
FROM rental;
```

💡 `IS NULL` tekshiruvi **birinchi** turishi kerak. Aks holda `NULL - rental_date` natijasi `NULL` bo'lib, ikkinchi shart ishlamaydi va qator `ELSE` ga tushadi.
</details>

**8.** Mijozlarning email domenlari ro'yxati (takrorlanmasin).

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT DISTINCT SPLIT_PART(email, '@', 2) AS domen
FROM customer
ORDER BY domen;
```
</details>

## 🔴 Qiyin

**9.** To'lovlar uchun `"2007-yil, 2-oy"` ko'rinishidagi ustun yarating va takrorlanmas oylar ro'yxatini xronologik tartibda chiqaring.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT DISTINCT
       DATE_TRUNC('month', payment_date) AS oy_boshi,
       EXTRACT(YEAR FROM payment_date)::int || '-yil, '
         || EXTRACT(MONTH FROM payment_date)::int || '-oy' AS oy_nomi
FROM payment
ORDER BY oy_boshi;
```

💡 Matn bo'yicha tartiblasak, `10-oy` `2-oy` dan oldin chiqib qoladi. Shuning uchun tartib uchun sana ustunini (`oy_boshi`) qoldirdik.
</details>

**10.** Har bir reytingdagi **eng qimmat** (`replacement_cost`) film. Bir xil narxlilardan alifbo bo'yicha birinchisi.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT DISTINCT ON (rating)
       rating, title, replacement_cost
FROM film
ORDER BY rating, replacement_cost DESC, title;
```
</details>

**11. Fikrlash.** Hamkasbingiz faol mijozlar foizini shunday hisobladi va `0` oldi. Xato qayerda?

```sql
SELECT 584 / 599 * 100;
```

<details markdown="1">
<summary>Javob</summary>

Butun bo'lish: `584 / 599 = 0`, keyin `0 * 100 = 0`. To'g'risi:

```sql
SELECT ROUND(100.0 * 584 / 599, 2);
```
</details>

---

## 🏁 Tayyorsiz, agar

- [ ] `DATE_TRUNC` va `EXTRACT` farqini tushuntira olsangiz
- [ ] `CASE` da shartlar tartibi nima uchun muhimligini misol bilan ko'rsata olsangiz
- [ ] `NULLIF` va `COALESCE` ni birga ishlatib, bo'sh qiymatlarni tozalay olsangiz
