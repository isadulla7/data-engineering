# 🗃️ 1-modul: SQL (chuqur)

> **SQL bu data engineerning ona tili.** Pipeline, warehouse, dbt, Spark SQL, Airflow — hammasining markazida SQL turadi. Shu modulni puxta o'zlashtirsangiz, keyingi modullar ikki barobar oson ketadi.

## 🎯 Modul oxirida siz

- murakkab analitik so'rovlarni (JOIN, CTE, window funksiyalar) yordamsiz yozasiz;
- `NULL`, dublikat va sekin so'rov kabi tuzoqlarni oldindan ko'rasiz;
- `EXPLAIN ANALYZE` bilan so'rovni tahlil qilib, indeks bilan tezlashtirasiz;
- GitHub'da birinchi portfolio loyihangizga ega bo'lasiz.

## 🧰 Boshlashdan oldin

👉 **[00-sozlash.md](00-sozlash.md)** — PostgreSQL, DBeaver va `dvdrental` namuna bazasini o'rnatish (taxminan 1 soat).

## 📅 10 haftalik reja

| Hafta | Dars | Mavzu | Holat |
|:---:|---|---|:---:|
| 1 | [01 — SELECT va WHERE](01-select-where/README.md) | `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, `NULL` | ✅ Tayyor |
| 2 | [02 — Funksiyalar va CASE](02-funksiyalar-case/README.md) | Matn, son, sana funksiyalari, `CASE WHEN`, `DISTINCT` | ✅ Tayyor |
| 3 | [03 — GROUP BY](03-group-by/README.md) | Agregatsiya, `GROUP BY`, `HAVING`, `FILTER` | ✅ Tayyor |
| 4 | 04 — JOIN'lar | `INNER`, `LEFT`, `FULL`, self-join, anti-join | 🔜 |
| 5 | 05 — Subquery va CTE | `WITH`, korrelyatsiyalangan subquery, rekursiv CTE | 🔜 |
| 6 | 06 — Window funksiyalar (1) | `ROW_NUMBER`, `RANK`, `LAG`/`LEAD` | 🔜 |
| 7 | 07 — Window funksiyalar (2) | Running total, frame, deduplikatsiya | 🔜 |
| 8 | 08 — DDL, DML, tranzaksiyalar | `CREATE`, `INSERT`, upsert, `MERGE`, ACID | 🔜 |
| 9 | 09 — Indekslar va EXPLAIN | B-tree, `EXPLAIN ANALYZE`, optimizatsiya | 🔜 |
| 10 | 🏆 Yakuniy loyiha | Olist e-commerce datasetida 30 biznes savoli | 🔜 |

## 📂 Har bir dars papkasida

| Fayl | Nima uchun |
|---|---|
| `README.md` | Dars matni: tushuntirish, diagrammalar, misollar, tuzoqlar |
| `queries.sql` | Darsdagi barcha so'rovlar, bazada to'g'ridan-to'g'ri ishga tushiriladi |
| `mashqlar.md` | Mashqlar va yashirin yechimlar ("Yechim" ni bosing) |

## 🧠 SQL'ni qanday tez o'rganish mumkin

1. **Har misolni qo'lda yozing.** Nusxa ko'chirmang, barmoqlaringiz ham eslab qolsin.
2. **Natijani oldindan taxmin qiling.** So'rovni ishga tushirishdan oldin "nechta qator chiqadi?" deb o'ylang.
3. **Xatoni yaxshi ko'ring.** Xato xabarini o'qib, nima uchun chiqqanini tushuning.
4. **Har kuni 3–5 ta masala.** [SQLBolt](https://sqlbolt.com/) (1–4-haftalar), keyin [DataLemur](https://datalemur.com/) va [LeetCode Database](https://leetcode.com/problemset/database/).

## 📖 Modul resurslari

- [PostgreSQL Tutorial](https://www.postgresqltutorial.com/) — bepul, misollar bilan
- [Mode SQL Tutorial](https://mode.com/sql-tutorial/) — analitik SQL
- 📘 *Learning SQL*, Alan Beaulieu (O'Reilly)
- 📗 *SQL Performance Explained*, Markus Winand — [use-the-index-luke.com](https://use-the-index-luke.com/) (bepul)
