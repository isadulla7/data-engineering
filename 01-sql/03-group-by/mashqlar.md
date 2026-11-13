# ✍️ 03-dars mashqlari

> Yechimni ochishdan oldin **kamida 10–15 daqiqa** o'zingiz urinib ko'ring. Har so'rovdan oldin "natijada nechta qator bo'ladi?" deb taxmin qiling.

## 🟢 Oson

**1.** Bazada nechta mijoz, nechta film va nechta ijara bor? (Uchta alohida so'rov.)

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT COUNT(*) FROM customer;
SELECT COUNT(*) FROM film;
SELECT COUNT(*) FROM rental;
```
</details>

**2.** Eng qisqa, eng uzun va o'rtacha film davomiyligi.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT MIN(length)           AS eng_qisqa,
       MAX(length)           AS eng_uzun,
       ROUND(AVG(length), 1) AS ortacha
FROM film;
```
</details>

**3.** Har bir ijara narxi (`rental_rate`) bo'yicha filmlar soni.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT rental_rate, COUNT(*) AS soni
FROM film
GROUP BY rental_rate
ORDER BY rental_rate;
```
</details>

**4.** Har bir do'konda (`store_id`) nechta mijoz bor?

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT store_id, COUNT(*) AS mijozlar
FROM customer
GROUP BY store_id;
```
</details>

## 🟡 O'rta

**5.** Eng ko'p pul to'lagan 10 ta mijoz (`customer_id`, to'lovlar soni, jami summa).

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT customer_id,
       COUNT(*)    AS tolovlar,
       SUM(amount) AS jami
FROM payment
GROUP BY customer_id
ORDER BY jami DESC
LIMIT 10;
```
</details>

**6.** Kunlik daromad: har bir kun uchun to'lovlar soni va summasi, eng daromadli kundan boshlab.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT payment_date::date AS kun,
       COUNT(*)           AS tolovlar,
       SUM(amount)        AS daromad
FROM payment
GROUP BY payment_date::date
ORDER BY daromad DESC;
```
</details>

**7.** O'rtacha davomiyligi 115 daqiqadan uzun bo'lgan reytinglar.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT rating, ROUND(AVG(length), 1) AS ortacha
FROM film
GROUP BY rating
HAVING AVG(length) > 115;
```

💡 Bu yerda `WHERE AVG(length) > 115` yozib bo'lmaydi: `WHERE` guruhlashdan oldin ishlaydi.
</details>

**8.** Haftaning qaysi kunida eng ko'p ijara bo'lgan? Hafta kuni raqami va ijaralar soni.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT EXTRACT(DOW FROM rental_date) AS hafta_kuni,
       COUNT(*)                      AS ijaralar
FROM rental
GROUP BY EXTRACT(DOW FROM rental_date)
ORDER BY ijaralar DESC;
```
</details>

## 🔴 Qiyin

**9.** Har bir mijoz uchun: jami to'lov, eng katta to'lov va **5$ dan katta** to'lovlar soni. Faqat kamida 30 ta to'lov qilgan mijozlar.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT customer_id,
       COUNT(*)                            AS tolovlar,
       SUM(amount)                         AS jami,
       MAX(amount)                         AS eng_katta,
       COUNT(*) FILTER (WHERE amount > 5)  AS katta_tolovlar
FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 30
ORDER BY jami DESC;
```
</details>

**10.** Oylik hisobot: har oy uchun to'lovlar soni, daromad, unikal mijozlar soni va bitta mijozga o'rtacha daromad.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT DATE_TRUNC('month', payment_date)::date             AS oy,
       COUNT(*)                                            AS tolovlar,
       SUM(amount)                                         AS daromad,
       COUNT(DISTINCT customer_id)                         AS mijozlar,
       ROUND(SUM(amount) / COUNT(DISTINCT customer_id), 2) AS mijozga_ortacha
FROM payment
GROUP BY DATE_TRUNC('month', payment_date)
ORDER BY oy;
```

💡 Bu tayyor **data mart** namunasi. Real kompaniyada xuddi shunday jadval har kecha pipeline orqali yangilanadi va dashboard'ga chiqadi.
</details>

**11.** Ijaralar holati bo'yicha pivot: har bir do'kon xodimi (`staff_id`) uchun qaytarilgan va qaytarilmagan ijaralar soni bitta qatorda.

<details markdown="1">
<summary>Yechim</summary>

```sql
SELECT staff_id,
       COUNT(*) FILTER (WHERE return_date IS NOT NULL) AS qaytarilgan,
       COUNT(*) FILTER (WHERE return_date IS NULL)     AS qaytarilmagan,
       COUNT(*)                                        AS jami
FROM rental
GROUP BY staff_id;
```
</details>

**12. Fikrlash.** Quyidagi so'rov aprel oyining **barcha** to'lovlarini sanaydimi?

```sql
SELECT COUNT(*) FROM payment
WHERE payment_date BETWEEN '2007-04-01' AND '2007-04-30';
```

<details markdown="1">
<summary>Javob</summary>

**Yo'q.** `'2007-04-30'` aslida `2007-04-30 00:00:00` degani. 30-aprel kuni soat 00:00 dan keyingi barcha to'lovlar tushib qoladi. To'g'risi:

```sql
WHERE payment_date >= '2007-04-01'
  AND payment_date <  '2007-05-01'
```
</details>

---

## 🏁 1-haftalik mini-loyiha

Yuqoridagi bilimlar bilan `dvdrental` uchun **"Biznes sog'ligi hisoboti"** yozing. Bu `hisobot.sql` faylida 5 ta so'rov bo'lsin:

1. Umumiy ko'rsatkichlar: mijozlar, filmlar, ijaralar, jami daromad.
2. Oylik daromad va o'sish (hozircha qo'lda solishtiring; 6-darsda `LAG` bilan avtomatlashtiramiz).
3. Top-10 mijoz.
4. Reytinglar bo'yicha filmlar soni va o'rtacha narx.
5. Qaytarilmagan ijaralar soni.

Har so'rov ustiga `-- Savol: ...` izohini yozing. Faylni shu repozitoriydagi `01-sql/loyihalar/` papkasiga joylang.

## 🏁 Tayyorsiz, agar

- [ ] `WHERE` va `HAVING` farqini diagrammasiz tushuntira olsangiz
- [ ] "must appear in the GROUP BY clause" xatosini ko'rib, darhol tuzata olsangiz
- [ ] Oylik hisobotni 5 daqiqada yoza olsangiz
