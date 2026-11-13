# 🧰 Muhitni sozlash

Taxminiy vaqt: **1 soat**. Natijada kompyuteringizda PostgreSQL, SQL yozish uchun qulay dastur va mashq qiladigan namuna baza bo'ladi.

```mermaid
flowchart LR
    A[1. PostgreSQL<br/>o'rnatish] --> B[2. DBeaver<br/>o'rnatish]
    B --> C[3. dvdrental<br/>bazasini tiklash]
    C --> D[4. Tekshiruv<br/>SELECT COUNT]
```

## 1. PostgreSQL o'rnatish

1. [postgresql.org/download](https://www.postgresql.org/download/) saytidan operatsion tizimingizni tanlang. Windows uchun **EDB installer** ni yuklang.
2. O'rnatishda barcha komponentlarni qoldiring (PostgreSQL Server, pgAdmin, Command Line Tools).
3. `postgres` foydalanuvchisi uchun **parol** o'ylab toping va yozib qo'ying. Uni keyin ko'p so'raydi.
4. Port: `5432` (standart, o'zgartirmang).

> [!WARNING]
> Parolni unutsangiz, qayta o'rnatishga to'g'ri keladi. Uni hoziroq xavfsiz joyga yozing.

## 2. DBeaver o'rnatish

[DBeaver Community](https://dbeaver.io/download/) bepul va SQL yozish uchun eng qulay dasturlardan biri. pgAdmin ham ishlaydi, lekin DBeaver keyinchalik boshqa bazalar (MySQL, Snowflake, BigQuery) bilan ham ishlay oladi.

Ulanish: **New Database Connection → PostgreSQL** → Host `localhost`, Port `5432`, User `postgres`, parolingiz.

## 3. Namuna baza: `dvdrental`

Bu DVD ijara do'konining bazasi: filmlar, aktyorlar, mijozlar, ijaralar, to'lovlar. 15 ta jadval, real hayotga yaqin.

1. [Bu sahifadan](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/) `dvdrental.zip` ni yuklang va ochib, `dvdrental.tar` ni oling.
2. Yangi baza yarating:
   ```sql
   CREATE DATABASE dvdrental;
   ```
3. Terminalda (Windows'da `cmd`) tiklang:
   ```bash
   pg_restore -U postgres -d dvdrental dvdrental.tar
   ```
   Yoki pgAdmin'da: `dvdrental` bazasi → o'ng tugma → **Restore** → faylni tanlang.

Batafsil qo'llanma: [Load PostgreSQL Sample Database](https://www.postgresqltutorial.com/postgresql-getting-started/load-postgresql-sample-database/).

## 4. Tekshiruv ✅

DBeaver'da `dvdrental` bazasiga ulanib, ishga tushiring:

```sql
SELECT COUNT(*) FROM film;
```

Natija **1000** bo'lsa, hammasi tayyor. 🎉

## 🗺️ Bazaning asosiy jadvallari

```mermaid
erDiagram
    customer ||--o{ rental : "ijaraga oladi"
    customer ||--o{ payment : "to'laydi"
    rental ||--o{ payment : "uchun"
    inventory ||--o{ rental : "beriladi"
    film ||--o{ inventory : "nusxalari"
    film ||--o{ film_actor : ""
    actor ||--o{ film_actor : "o'ynaydi"
    customer }o--|| address : "yashaydi"

    film {
        int film_id PK
        text title
        numeric rental_rate
        int length
        mpaa_rating rating
    }
    customer {
        int customer_id PK
        text first_name
        text last_name
        text email
        int active
    }
    payment {
        int payment_id PK
        int customer_id FK
        numeric amount
        timestamp payment_date
    }
    rental {
        int rental_id PK
        int customer_id FK
        int inventory_id FK
        timestamp rental_date
        timestamp return_date
    }
```

Birinchi 3 darsda asosan `film`, `customer`, `payment` va `address` jadvallari bilan ishlaymiz. Qolganlari 4-haftada JOIN'lar bilan kerak bo'ladi.

## 🆘 O'rnatib bo'lmasa

[DB Fiddle](https://www.db-fiddle.com/) yoki [OneCompiler PostgreSQL](https://onecompiler.com/postgresql) brauzerda ishlaydi. Ularga katta baza yuklab bo'lmaydi, shuning uchun bu faqat vaqtinchalik yechim.
