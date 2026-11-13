# ✍️ 01-dars mashqlari

> Har birini `dvdrental` bazasida yozing. Yechimni ochishdan oldin **kamida 10–15 daqiqa** o'zingiz urinib ko'ring. Xato qilish o'rganishning bir qismi.

## 🟢 Oson

**1.** `customer` jadvalidan barcha mijozlarning ismi, familiyasi va emailini chiqaring.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT first_name, last_name, email
FROM customer;
```
</details>

**2.** Ijara narxi (`rental_rate`) 0.99 bo'lgan filmlar nomini chiqaring.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT title
FROM film
WHERE rental_rate = 0.99;
```
</details>

**3.** Reytingi `'R'` bo'lgan va davomiyligi 120 daqiqadan uzun filmlar.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT title, rating, length
FROM film
WHERE rating = 'R'
  AND length > 120;
```
</details>

**4.** Eng qisqa 5 ta filmning nomi va davomiyligi.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT title, length
FROM film
ORDER BY length ASC, title
LIMIT 5;
```

💡 `title` ni ikkinchi tartib sifatida qo'shdik: uzunligi teng filmlar bo'lsa, natija har safar bir xil chiqadi.
</details>

**5.** Ismi `J` harfi bilan boshlanadigan mijozlar, familiya bo'yicha alifbo tartibida.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'J%'
ORDER BY last_name;
```
</details>

## 🟡 O'rta

**6.** `replacement_cost` 20 dan katta va reytingi `G` yoki `PG` bo'lgan filmlar, `replacement_cost` bo'yicha kamayish tartibida.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT title, rating, replacement_cost
FROM film
WHERE replacement_cost > 20
  AND rating IN ('G', 'PG')
ORDER BY replacement_cost DESC;
```

⚠️ Agar `rating = 'G' OR rating = 'PG' AND replacement_cost > 20` deb yozgan bo'lsangiz, natija noto'g'ri. Nega? Darsdagi "AND, OR va qavslar" bo'limini qayta o'qing.
</details>

**7.** Nomida `love` so'zi bor filmlar (katta-kichik harf farqi muhim emas).

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT title
FROM film
WHERE title ILIKE '%love%';
```
</details>

**8.** Har bir film uchun nomi, davomiyligi va "soat" hamda "daqiqa" ustunlari. Masalan, 125 daqiqa → 2 soat, 5 daqiqa.

*Ishora:* `/` (butun bo'lish) va `%` (qoldiq) operatorlari.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT title,
       length,
       length / 60 AS soat,
       length % 60 AS daqiqa
FROM film;
```

💡 Bu yerda butun songa bo'lish tuzog'i **foydamizga** ishladi: `125 / 60 = 2`.
</details>

**9.** Faol bo'lmagan (`active = 0`) mijozlar nechta?

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT COUNT(*)
FROM customer
WHERE active = 0;
```
</details>

**10.** `address` jadvalida `postal_code` bo'sh (`NULL` yoki `''`) bo'lgan manzillar.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT address_id, address, postal_code
FROM address
WHERE postal_code IS NULL
   OR postal_code = '';
```

💡 Real ma'lumotda "bo'sh" ko'pincha ikki xil keladi: `NULL` va `''`. Data engineer ikkalasini ham tekshiradi.
</details>

## 🔴 Fikrlash savollari

**11.** `WHERE rating <> 'R'` so'rovi `rating` `NULL` bo'lgan qatorlarni qaytaradimi? Nima uchun?

<details markdown="1">
<summary>Javob</summary>

**Yo'q.** `NULL <> 'R'` natijasi `TRUE` emas, `NULL`. `WHERE` esa faqat `TRUE` qatorlarni qoldiradi. To'g'ri yozilishi:

```sql
WHERE rating <> 'R' OR rating IS NULL
-- yoki
WHERE rating IS DISTINCT FROM 'R'
```
</details>

**12.** Nima uchun `SELECT title, length AS d FROM film WHERE d > 100` xato beradi, `ORDER BY d` esa ishlaydi?

<details markdown="1">
<summary>Javob</summary>

Bajarilish tartibi: `FROM → WHERE → SELECT → ORDER BY → LIMIT`. `WHERE` ishlayotganda `SELECT` hali bajarilmagan, shuning uchun `d` degan alias mavjud emas. `ORDER BY` esa `SELECT` dan keyin ishlaydi va aliasni ko'radi.
</details>

---

## 🏁 Tayyorsiz, agar

- [ ] 12 ta mashqning kamida 10 tasini yechimga qaramasdan yechgan bo'lsangiz
- [ ] `NULL` bilan nima uchun `=` ishlamasligini o'z so'zingiz bilan tushuntira olsangiz
- [ ] Bajarilish tartibini yoddan ayta olsangiz

**Qo'shimcha mashq:** [SQLBolt](https://sqlbolt.com/) 1–4-darslar · [PostgreSQL Tutorial: Filtering Data](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-where/)
