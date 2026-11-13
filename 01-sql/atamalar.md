# 📖 Atamalar lug'ati

Darslarda uchraydigan barcha atamalar shu yerda, oddiy tilda va hayotiy misol bilan. Tushunmagan so'zingizga duch kelsangiz, avval shu sahifaga qarang. Saytda esa atama ustiga sichqonchani olib borsangiz ham qisqa izoh chiqadi.

> [!TIP]
> Atamalarni yod olishga urinmang. Darsni o'qiyotganda shu sahifani yonida ochib qo'ying. 2–3 hafta ichida ular o'z-o'zidan esda qoladi.

---

## 🧱 Baza va jadval

| Atama | Oddiy tilda | Hayotiy misol |
|---|---|---|
| **Ma'lumot** (data) | Yozib qo'yilgan har qanday fakt: ism, narx, sana. | Do'kon daftaridagi "Ali, 2 kg olma, 30 000 so'm" yozuvi. |
| **Ma'lumotlar bazasi** (database, DB) | Ma'lumotlar tartibli saqlanadigan joy. Ichida bir nechta jadval bo'ladi. | Butun do'konning barcha daftarlari saqlanadigan shkaf. |
| **Jadval** (table) | Bir turdagi ma'lumotlar ro'yxati: qatorlar va ustunlardan iborat. | "Mijozlar daftari" yoki "Sotuvlar daftari". Excel'dagi bitta varaq. |
| **Qator** (row, record, yozuv) | Jadvaldagi bitta narsa haqidagi barcha ma'lumot. | Daftardagi bitta satr: bitta mijoz yoki bitta sotuv. |
| **Ustun** (column, field, maydon) | Har bir qatorda bo'ladigan bitta xususiyat. | Daftardagi "Ism", "Telefon", "Sana" kataklari. |
| **Ma'lumot turi** (data type) | Ustunga qanday qiymat yozish mumkinligi: son, matn, sana… | "Telefon" ustuniga harf emas, raqam yoziladi. |
| **Sxema** (schema) | Bazadagi jadvallar va ularning tuzilishi (qaysi ustunlar bor) tavsifi. | Shkafdagi daftarlar ro'yxati va har birida qanday ustunlar borligi. |
| **Relyatsion baza** (relational database) | Jadvallari bir-biri bilan **bog'langan** baza. PostgreSQL, MySQL, Oracle shunday. | "Sotuvlar" daftaridagi mijoz raqami orqali "Mijozlar" daftaridan uning ismini topish. |
| **PostgreSQL** (Postgres) | Bepul, ochiq va eng mashhur relyatsion bazalardan biri. Biz shunda o'qiymiz. | Shkafning brendi, masalan "Artel". |
| **DBeaver / pgAdmin** | Bazaga ulanib, SQL yozish va natijani ko'rish uchun dastur. | Shkafni ochadigan kalit va undagi daftarlarni o'qish uchun ko'zoynak. |
| **Namuna baza** (sample database) | O'rganish uchun tayyorlangan, ichida ma'lumoti bor baza. Bizda `dvdrental`. | Mashq qilish uchun beriladigan tayyor do'kon daftarlari. |

## 🔑 Kalitlar

| Atama | Oddiy tilda | Hayotiy misol |
|---|---|---|
| **Primary key** (asosiy kalit, PK) | Har bir qatorni **yagona** aniqlaydigan ustun. Ikkita qatorda bir xil bo'lishi mumkin emas. | Pasport raqami: ikki odamda bir xil bo'lmaydi. `film_id`, `customer_id`. |
| **Foreign key** (tashqi kalit, FK) | Boshqa jadvalning primary key'iga ishora qiluvchi ustun. Jadvallarni bog'laydi. | Sotuv chekidagi "mijoz raqami 15" yozuvi. U "Mijozlar" jadvalidagi 15-mijozga ishora qiladi. |
| **ID** (identifikator) | Qatorning tartib raqami yoki noyob belgisi, ko'pincha primary key. | Navbat raqami: 1, 2, 3… |

## 💬 SQL so'rov

| Atama | Oddiy tilda | Hayotiy misol |
|---|---|---|
| **SQL** (Structured Query Language) | Bazaga savol berish va buyruq berish tili. "Es-ku-el" yoki "sikvel" deb o'qiladi. | Kutubxonachiga "menga 2020-yildan keyingi ingliz tilidagi kitoblarni bering" deyish. |
| **So'rov** (query) | Bazaga yuborilgan bitta SQL buyruq. | Kutubxonachiga bergan bitta savolingiz. |
| **Natija** (result set) | So'rov qaytargan jadval. | Kutubxonachi olib kelgan kitoblar to'plami. |
| **Kalit so'z** (keyword) | SQL'ning o'z so'zlari: `SELECT`, `FROM`, `WHERE`… Odatda katta harf bilan yoziladi. | Tilning grammatik so'zlari: "va", "yoki", "dan". |
| **Ifoda** (expression) | Qiymat hosil qiladigan har qanday narsa: `length / 60`, `'Ali' \|\| ' '`, `rental_rate * 2`. | Kalkulyatorga yozilgan misol. |
| **Shart** (condition, predicate) | Rost yoki yolg'on bo'ladigan ifoda: `length > 120`. | "Narxi 10 000 dan arzonmi?" degan savol. |
| **Alias** (taxallus, `AS`) | Ustun yoki jadvalga vaqtinchalik boshqa nom berish. | Do'stingizni ismi o'rniga laqabi bilan chaqirish. `length AS daqiqa`. |
| **Izoh** (comment) | Kod ichidagi tushuntirish, baza uni bajarmaydi. SQL'da `--` dan keyin yoziladi. | Daftar chetidagi qalam bilan yozilgan eslatma. |
| **Literal** | Kodga to'g'ridan-to'g'ri yozilgan qiymat: `'PG'`, `4.99`, `'2007-04-01'`. | Formulaga qo'yilgan aniq raqam. |
| **Sintaksis xatosi** (syntax error) | SQL qoidasi buzilganda chiqadigan xato: vergul yetishmasa, so'z noto'g'ri yozilsa. | Gapdagi imlo xatosi. |

## 🔎 Tanlash, filtrlash, tartiblash

| Atama | Oddiy tilda | Hayotiy misol |
|---|---|---|
| **`SELECT`** | Qaysi **ustunlarni** ko'rsatishni aytadi. | "Menga faqat ism va telefonni ko'rsat." |
| **`FROM`** | Qaysi **jadvaldan** olishni aytadi. | "Mijozlar daftaridan." |
| **`WHERE`** | Qaysi **qatorlarni** qoldirishni aytadi (filtr). | "Faqat Toshkentda yashaydiganlarini." |
| **Filtr** (filter) | Shartga mos kelmaydigan qatorlarni chiqarib tashlash. | Elakdan o'tkazish: mayda toshlar o'tadi, kattasi qoladi. |
| **`ORDER BY`** | Natijani tartiblash. `ASC` o'sish, `DESC` kamayish tartibi. | Ro'yxatni alifbo bo'yicha yoki narxi bo'yicha saralash. |
| **`LIMIT` / `OFFSET`** | Nechta qator olish / nechtasini tashlab o'tish. | "Birinchi 10 tasini ber" / "11-dan boshlab ber". |
| **Sahifalash** (pagination) | Katta natijani bo'laklab ko'rsatish: 1-sahifa, 2-sahifa… | Internet-do'kondagi "Keyingi sahifa" tugmasi. |
| **`LIKE` / `ILIKE`** | Matnni shablon bo'yicha qidirish. `%` istalgan belgilar, `_` bitta belgi. `ILIKE` katta-kichik harfni farqlamaydi. | Telefon kontaktlaridan "Ali" so'zi bor barcha ismlarni topish. |
| **`DISTINCT`** | Takrorlanuvchi qatorlarni bittaga qisqartirish. | Sinfdagi o'quvchilar qaysi tumanlardan kelganini **takrorlamasdan** sanash. |
| **Bajarilish tartibi** (logical order) | Baza so'rov qismlarini qaysi ketma-ketlikda bajarishi: FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT. | Ovqat pishirish: avval mahsulot olinadi, keyin to'g'raladi, oxirida suziladi. |

## 👻 NULL va mantiq

| Atama | Oddiy tilda | Hayotiy misol |
|---|---|---|
| **NULL** | "Qiymat yo'q" yoki "noma'lum". 0 ham, bo'sh matn ham **emas**. | Anketadagi to'ldirilmagan katak. |
| **`IS NULL` / `IS NOT NULL`** | Qiymat bo'shmi yoki yo'qligini tekshirishning yagona to'g'ri usuli. | "Bu katak to'ldirilganmi?" deb so'rash. |
| **`COALESCE`** | Bo'sh (`NULL`) qiymat o'rniga boshqa qiymat qo'yish. | "Telefon yozilmagan bo'lsa, 'yo'q' deb yoz." |
| **`NULLIF`** | Ikki qiymat teng bo'lsa `NULL` qaytaradi. Ko'pincha nolga bo'lishdan saqlash uchun. | "Agar 0 bo'lsa, umuman hisoblama." |
| **Boolean** (mantiqiy qiymat) | Faqat ikki qiymat: `TRUE` (rost) yoki `FALSE` (yolg'on). SQL'da uchinchisi ham bor: `NULL`. | "Ha / yo'q" savoli. |
| **`AND` / `OR` / `NOT`** | Shartlarni birlashtirish: va / yoki / emas. `AND` doim `OR` dan oldin bajariladi. | "Arzon **va** yangi", "qizil **yoki** ko'k". |

## 🔤 Funksiyalar va turlar

| Atama | Oddiy tilda | Hayotiy misol |
|---|---|---|
| **Funksiya** (function) | Qiymat olib, uni o'zgartirib qaytaradigan tayyor buyruq: `UPPER('ali')` → `ALI`. | Go'sht qiymalagich: go'sht kiradi, qiyma chiqadi. |
| **Argument** | Funksiyaga beriladigan qiymat (qavs ichidagisi). | Qiymalagichga solingan go'sht. |
| **Butun son** (integer, `int`) | Kasrsiz son: 1, 42, -7. | Odamlar soni. |
| **Kasr son** (`numeric`, `decimal`) | Aniq kasrli son. Pul uchun shu ishlatiladi. | Narx: 4.99. |
| **`float`** | Taxminiy kasrli son. Tez, lekin kichik yaxlitlash xatolari bor, shuning uchun pulga yaramaydi. | Taxminiy o'lchov: "taxminan 3.3 metr". |
| **Matn** (`text`, `varchar`) | Harflar va belgilar ketma-ketligi. Bitta qo'shtirnoqda yoziladi: `'Ali'`. | Ism, manzil. |
| **`date` / `timestamp`** | Sana / sana va vaqt birga. | `2026-11-13` / `2026-11-13 12:41:00`. |
| **`timestamptz`** | Vaqt zonasi bilan saqlanadigan sana-vaqt. | "Toshkent vaqti bilan soat 12:41". |
| **Interval** | Vaqt oralig'i: 7 kun, 3 soat. | "Bir haftadan keyin". |
| **Tur o'zgartirish** (cast, `::`) | Qiymatni bir turdan boshqasiga o'tkazish: `'42'::int`. | Dollarni so'mga almashtirish: qiymat o'sha, ko'rinish boshqa. |
| **Butun bo'lish** (integer division) | Ikki butun sonni bo'lganda kasr qismi tashlab yuboriladi: `7 / 2 = 3`. | 7 ta olmani 2 kishiga bo'lsangiz, har biriga 3 tadan, 1 tasi qoladi. |
| **Qoldiq** (modulo, `%`) | Bo'lishdan qolgan qism: `7 % 2 = 1`. | O'sha ortib qolgan 1 ta olma. |
| **`CASE WHEN`** | SQL'dagi "agar … bo'lsa, … aks holda …". | "Agar yoshi 18 dan katta bo'lsa 'katta', aks holda 'bola'." |
| **`DATE_TRUNC`** | Sanani oy, hafta yoki kun boshiga "yaxlitlash". | 15-mart, 20-mart, 28-mart → hammasi "mart" savatiga tushadi. |
| **`EXTRACT`** | Sanadan bitta qismini olish: yil, oy, kun. | "2026-11-13" dan faqat "11" (oy)ni olish. |

## 📊 Agregatsiya va guruhlash

| Atama | Oddiy tilda | Hayotiy misol |
|---|---|---|
| **Agregatsiya** (aggregation) | Ko'p qatorni bitta songa jamlash: yig'indi, soni, o'rtachasi. | Kunlik barcha cheklardan "bugungi jami savdo"ni hisoblash. |
| **Agregat funksiya** | Agregatsiya qiladigan funksiya: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`. | Kalkulyatordagi "jami" tugmasi. |
| **`COUNT`** | Sanash. `COUNT(*)` barcha qatorlarni, `COUNT(ustun)` bo'sh bo'lmaganlarini sanaydi. | Sinfda nechta o'quvchi borligini sanash. |
| **`SUM` / `AVG`** | Yig'indi / o'rtacha. | Oylik xarajatlar jami / o'rtacha kunlik xarajat. |
| **`MIN` / `MAX`** | Eng kichik / eng katta qiymat. | Eng arzon va eng qimmat mahsulot. |
| **`GROUP BY`** | Qatorlarni guruhlarga ajratish, keyin har guruh uchun alohida hisoblash. | O'quvchilarni sinflarga ajratib, har sinf o'rtacha bahosini hisoblash. |
| **Guruh** (group) | Bir xil qiymatga ega qatorlar to'plami. | 5-"A" sinfi o'quvchilari. |
| **`HAVING`** | Guruhlarni filtrlash (guruhlashdan **keyin**). `WHERE` esa qatorlarni guruhlashdan **oldin** filtrlaydi. | "O'rtacha bahosi 4 dan yuqori sinflarni ko'rsat." |
| **`FILTER (WHERE …)`** | Agregat funksiyani faqat shartga mos qatorlar uchun hisoblash. | "Jami o'quvchilar, shundan nechtasi a'lochi" bitta jadvalda. |
| **Pivot** | Qatorlardagi qiymatlarni ustunlarga aylantirish. | Oylar pastga qarab emas, yonma-yon ustunlarda turgan jadval. |
| **`ROLLUP`** | Har guruh uchun oraliq jami va oxirida umumiy jami qo'shish. | Excel'dagi "Subtotal". |
| **Hisobot** (report) | Biznes savollariga javob beradigan jamlangan jadval yoki grafik. | "Oylik savdo hisoboti". |

## 🏭 Data engineering atamalari

Bu so'zlar darslarda "nega bu muhim" degan joylarda uchraydi. Ularni hozir chuqur bilish shart emas, keyingi modullarda batafsil o'rganamiz.

| Atama | Oddiy tilda | Hayotiy misol |
|---|---|---|
| **Data engineer** | Ma'lumotni turli joylardan yig'ib, tozalab, boshqalar foydalana oladigan holatga keltiradigan muhandis. | Suv tozalash zavodi muhandisi: daryodan suv olib, tozalab, uylarga yetkazadi. |
| **Pipeline** (quvur) | Ma'lumotni bir joydan olib, o'zgartirib, boshqa joyga yetkazadigan avtomatik jarayon. | Suv quvuri: manba → tozalash → uy. |
| **ETL / ELT** | Extract (olish) → Transform (o'zgartirish) → Load (yuklash). ELT'da avval yuklanadi, keyin o'zgartiriladi. | Bozordan mahsulot olish, uyda tozalash, muzlatkichga solish. |
| **Staging** (oraliq qatlam) | Xom ma'lumot birinchi tushadigan va tozalanadigan joy. | Oshxonadagi mahsulot yuviladigan stol. |
| **Data warehouse** (ma'lumotlar ombori) | Tahlil uchun mo'ljallangan katta baza: Snowflake, BigQuery, Redshift. | Shahar markaziy ombori. |
| **Data mart** | Warehouse ichidagi bitta bo'lim yoki mavzu uchun tayyor jadvallar. | Ombordagi faqat "sut mahsulotlari" bo'limi. |
| **Dashboard** | Asosiy raqamlar va grafiklar bitta ekranda. | Mashinaning priborlar paneli. |
| **Cloud** (bulut) | Internetdagi boshqa kompaniya (Amazon, Google, Microsoft) serverlari, ijaraga olinadi. | O'z omboringiz o'rniga ijaraga olingan ombor. |
| **Dublikat** (duplicate) | Bir xil ma'lumot ikki yoki undan ko'p marta yozilib qolishi. | Bitta chekni ikki marta hisobga kiritish. |
| **Idempotent** | Necha marta ishga tushirsangiz ham natija bir xil bo'ladigan jarayon. | Lift tugmasini 5 marta bossangiz ham lift bir marta keladi. |
| **Indeks** (index) | Qidiruvni tezlashtirish uchun bazaning "mundarijasi". 9-darsda o'rganamiz. | Kitob oxiridagi alifboli ko'rsatkich. |
| **`EXPLAIN ANALYZE`** | Baza so'rovni qanday bajarganini va qancha vaqt ketganini ko'rsatadigan buyruq. | Navigatorning "qaysi yo'ldan va necha daqiqada bordingiz" hisoboti. |
