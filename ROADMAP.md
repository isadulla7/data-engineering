# Data Engineer: noldan Senior darajagacha yo'l xaritasi

> Oxirgi yangilanish: 2026-yil 13-noyabr

## Kirish: qanday ishlatish

Haftasiga 12–15 soat (part-time) o'qisangiz, noldan **junior darajasiga 12–15 oyda**, middle darajasiga ish tajribasi bilan yana 1.5–2 yilda, **senior darajasiga jami 4–6 yilda** yetasiz. Senior bo'lish kurs bilan emas, haqiqiy production tizimlarida xato qilib, tuzatib, mas'uliyat olib o'tadi. Shu sababli 0–10 bosqichlar sizni ishga tayyorlaydi, 11-bosqich esa ish davomida o'stiriladi.

Har bir bosqichda bir xil tuzilma bor: **Maqsad**, **Mavzular**, **Resurslar**, **Amaliy loyiha**, **Davomiylik** va **"Tayyorsiz, agar…"** checklisti. Checklistdagi barcha bandlarni bajara olmaguningizcha keyingi bosqichga o'tmang. Bu yo'l xaritasidagi eng muhim qoida shu.

| # | Bosqich | Part-time davomiyligi | Natija |
| --- | --- | --- | --- |
| 0 | Linux, terminal, Git (Docker'dan oldin) | 3–4 hafta | Terminalda erkin ishlaysiz |
| 1 | SQL (chuqur) | 8–10 hafta | Murakkab analitik so'rovlar yozasiz |
| 2 | Python | 8–10 hafta | API va fayllardan ma'lumot oluvchi skriptlar |
| 3 | PostgreSQL va data modeling | 6–8 hafta | Star schema loyihalaysiz |
| 4 | Docker va dasturiy muhandislik | 3–4 hafta | Loyihani konteynerda ishga tushirasiz |
| 5 | ETL/ELT va Airflow | 6–8 hafta | Kunlik pipeline orkestratsiya qilasiz |
| 6 | dbt va data warehouse | 5–6 hafta | Test qilingan transformatsiya qatlami |
| 7 | Spark | 8–10 hafta | Gigabaytlab ma'lumotni qayta ishlaysiz |
| 8 | Cloud (AWS) va Terraform | 8–10 hafta | Cloud'da end-to-end platforma |
| 9 | Kafka va streaming | 5–6 hafta | Real-time pipeline |
| 10 | Data quality, CI/CD, observability | 4–5 hafta | Production darajasidagi pipeline |
| 11 | Senior ko'nikmalar | 2–4 yil (ish bilan) | Arxitektura qarorlarini qabul qilasiz |

**Tartib nima uchun shunday:** SQL data engineerning ona tili, shuning uchun u birinchi. Python avtomatlashtirish uchun, PostgreSQL va modeling esa ma'lumot qanday saqlanishini tushunish uchun. Airflow, Spark va Cloud faqat shu poydevor ustiga quriladi. Ingliz tili B1+ darajada bo'lishi shart, chunki deyarli barcha hujjatlar inglizcha. Agar tilingiz zaif bo'lsa, unga parallel ravishda haftasiga 3–4 soat ajrating.

## 0-bosqich: Linux, terminal va Git (keyinga surildi)

**Yangilanish (13-noyabr):** Sadulla qarori bilan o'qish SQL'dan boshlanadi. Bu bosqich 4-bosqichdan (Docker) oldin o'tiladi, chunki Docker va Airflow uchun terminal shart. Faqat Git va GitHub asoslarini (1–2 kun) 1-bosqich loyihasini joylashdan oldin o'rganish kifoya.

**Maqsad:** Serverlar, pipeline'lar va cloud mashinalar Linux'da ishlaydi. Terminalda erkin harakatlanish va kodni Git bilan boshqarish har kungi ishingiz bo'ladi.

**Mavzular:**

- Fayl tizimi, `ls`, `cd`, `cp`, `mv`, `find`, `chmod`, foydalanuvchilar va ruxsatlar
- Matn bilan ishlash: `cat`, `less`, `grep`, `sed`, `awk`, `sort`, `uniq`, `wc`, pipe (`|`) va redirect (`>`)
- Jarayonlar va resurslar: `ps`, `top`, `kill`, `df`, `du`, `free`
- Bash skript asoslari: o'zgaruvchilar, `if`, `for`, exit kodlari, cron
- SSH, kalitlar, `scp`, muhit o'zgaruvchilari (`env`, `export`)
- Tarmoq asoslari: IP, port, DNS, HTTP/HTTPS, `curl`
- Git: `commit`, `branch`, `merge`, `rebase`, conflict hal qilish, pull request oqimi, `.gitignore`

**Resurslar:**

- [The Missing Semester of Your CS Education](https://missing.csail.mit.edu/) (MIT, bepul) — shell, Git, debugging bo'yicha eng yaxshi kurs
- [Linux Journey](https://linuxjourney.com/) (bepul)
- Kitob: *The Linux Command Line*, William Shotts ([bepul PDF](https://linuxcommand.org/tlcl.php))
- [Pro Git](https://git-scm.com/book) (bepul kitob) va [Learn Git Branching](https://learngitbranching.js.org/) (interaktiv)

**Amaliy loyiha:** Kompyuteringizga Ubuntu (WSL2 yoki VirtualBox orqali) o'rnating. Ochiq CSV datasetni (masalan, NYC Taxi'ning bir oyi) `curl` bilan yuklab oluvchi, `awk`/`grep` bilan tozalovchi va qisqa hisobot chiqaruvchi Bash skript yozing. Uni cron bilan har kuni ishga tushiring va GitHub'ga README bilan joylang.

**Davomiylik:** 3–4 hafta.

**Tayyorsiz, agar:**

- [ ] Sichqonchasiz, faqat terminal orqali fayllarni topib, tahrirlab, ko'chira olsangiz
- [ ] 1 GB log faylda `grep` va `awk` bilan kerakli qatorlarni sanay olsangiz
- [ ] SSH kalit yaratib, uzoq serverga ulana olsangiz
- [ ] Git'da branch ochib, conflict hal qilib, PR orqali birlashtira olsangiz
- [ ] Cron bilan ishlaydigan Bash skriptingiz GitHub'da bo'lsa

## 1-bosqich: SQL (chuqur)

**Maqsad:** Data engineer kunining katta qismi SQL bilan o'tadi. Faqat `SELECT` yozish emas, so'rov qanday bajarilishini tushunish va uni tezlashtira olish kerak.

**Mavzular:**

1. Asoslar: `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, `DISTINCT`, `NULL` mantig'i
2. Agregatsiya: `GROUP BY`, `HAVING`, `COUNT/SUM/AVG`, `CASE WHEN`
3. JOIN turlari: `INNER`, `LEFT`, `FULL`, `CROSS`, self-join, anti-join (`NOT EXISTS`)
4. Subquery va CTE (`WITH`), rekursiv CTE (ierarxiyalar uchun)
5. **Window funksiyalar:** `ROW_NUMBER`, `RANK`, `LAG/LEAD`, running total, `PARTITION BY`, frame (`ROWS BETWEEN`)
6. Set operatsiyalar: `UNION`, `INTERSECT`, `EXCEPT`
7. DDL va DML: `CREATE`, `ALTER`, `INSERT`, `UPDATE`, `DELETE`, `MERGE`/upsert
8. Sana va matn funksiyalari, tiplarni o'zgartirish
9. Indekslar, `EXPLAIN ANALYZE`, so'rov rejasini o'qish
10. Tranzaksiyalar va ACID, izolyatsiya darajalari
11. Data engineer patternlari: deduplikatsiya, gaps-and-islands, SCD, pivot, sessionization

**Resurslar:**

- [SQLBolt](https://sqlbolt.com/) va [Mode SQL Tutorial](https://mode.com/sql-tutorial/) (bepul, boshlash uchun)
- [PostgreSQL Tutorial](https://www.postgresqltutorial.com/) (bepul)
- Kitob: *Learning SQL*, Alan Beaulieu (O'Reilly)
- Kitob: *SQL Performance Explained*, Markus Winand ([use-the-index-luke.com](https://use-the-index-luke.com/) bepul versiyasi)
- Mashq: [LeetCode Database](https://leetcode.com/problemset/database/), [DataLemur](https://datalemur.com/), [StrataScratch](https://www.stratascratch.com/) — kamida 100 ta masala

**Amaliy loyiha:** PostgreSQL'ga ochiq dataset yuklang (masalan, Brazilian E-Commerce "Olist", Kaggle). Unga 30 ta biznes savoliga javob beruvchi so'rov yozing: oylik daromad o'sishi, mijozlar kohortasi (retention), har kategoriyada top-3 mahsulot, ikki buyurtma orasidagi o'rtacha vaqt. Eng sekin 3 ta so'rovni `EXPLAIN ANALYZE` bilan tahlil qilib, indeks bilan tezlashtiring va natijani README'da yozing.

**Davomiylik:** 8–10 hafta. Shundan keyin ham har hafta 3–5 ta masala yechishni davom ettiring.

**Tayyorsiz, agar:**

- [ ] Window funksiya bilan "har mijozning oxirgi buyurtmasi"ni subquery'siz topa olsangiz
- [ ] `LEFT JOIN` va `WHERE` filtri qachon natijani `INNER JOIN`ga aylantirishini tushuntira olsangiz
- [ ] Dublikatlarni `ROW_NUMBER` bilan o'chira olsangiz
- [ ] `EXPLAIN` natijasida Seq Scan va Index Scan farqini ko'rsata olsangiz
- [ ] DataLemur'da Medium darajadagi masalalarning 70%+ ni yordamsiz yecha olsangiz

## 2-bosqich: Python (data engineer uchun)

**Maqsad:** Python'da ishonchli, o'qiladigan va test qilingan kod yozish. Data engineer uchun Python bu ma'lumotni olib kelish, o'zgartirish va pipeline'larni boshqarish vositasi.

**Mavzular:**

1. Asoslar: tiplar, `list/dict/set/tuple`, sikllar, funksiyalar, comprehension
2. Fayllar: CSV, JSON, Parquet o'qish va yozish; `pathlib`; encoding muammolari
3. Xatolarni boshqarish (`try/except`), `logging`, konfiguratsiya (`.env`, YAML)
4. OOP asoslari: klass, meros, dataclass; modul va paketlar
5. Generatorlar va iteratorlar (katta fayllarni xotiraga sig'dirmasdan o'qish)
6. Virtual muhit va paket boshqaruvi: `venv`, `pip`, `uv` yoki `poetry`
7. API bilan ishlash: `requests`, pagination, rate limit, retry, autentifikatsiya
8. Ma'lumotlar bazasiga ulanish: `psycopg`, `SQLAlchemy`
9. **pandas** (asosiy), keyin **Polars** va **DuckDB** (zamonaviy, tez)
10. Test yozish: `pytest`, fixture, mock
11. Kod sifati: type hints, `ruff`, `black`, `mypy`
12. Concurrency asoslari: `threading`, `multiprocessing`, `asyncio` (qachon qaysi biri)

**Resurslar:**

- [Python.org rasmiy tutorial](https://docs.python.org/3/tutorial/) (bepul)
- Kitob: *Automate the Boring Stuff with Python* ([bepul onlayn](https://automatetheboringstuff.com/)) — boshlash uchun
- Kitob: *Python Crash Course*, Eric Matthes — tizimli asos
- Kitob: *Fluent Python*, Luciano Ramalho — middle darajaga chiqish uchun (keyinroq)
- Kitob: *Python for Data Analysis*, Wes McKinney ([bepul onlayn](https://wesmckinney.com/book/)) — pandas muallifidan
- Mashq: [Exercism Python](https://exercism.org/tracks/python) (bepul, mentorli)

**Amaliy loyiha:** Ochiq API'dan (masalan, [Open-Meteo](https://open-meteo.com/) ob-havo yoki valyuta kurslari API) har kuni ma'lumot oluvchi Python paketi yozing. U pagination va xatolarda retry qilsin, ma'lumotni tozalab Parquet'ga va PostgreSQL'ga yozsin, logging qilsin, sozlamalarni `.env`dan o'qisin. Kamida 10 ta `pytest` testi va `ruff` bilan toza kod bo'lsin.

**Davomiylik:** 8–10 hafta.

**Tayyorsiz, agar:**

- [ ] 5 GB CSV faylni xotirani to'ldirmasdan (chunk yoki generator bilan) qayta ishlay olsangiz
- [ ] API xato qaytarganda pipeline yiqilmasdan qayta urinadigan kod yoza olsangiz
- [ ] pandas'da `groupby`, `merge`, `pivot` amallarini SQL ekvivalenti bilan solishtira olsangiz
- [ ] Loyihangiz `pip install` yoki `uv sync` bilan boshqa kompyuterda ishga tushsa
- [ ] Funksiyalaringiz uchun testlar yozilgan va o'tayotgan bo'lsa

## 3-bosqich: Ma'lumotlar bazalari, PostgreSQL va data modeling

**Maqsad:** Ma'lumot qanday saqlanishini, nima uchun OLTP va OLAP tizimlari farq qilishini tushunish va biznes jarayonini to'g'ri jadval tuzilmasiga aylantira olish. Yaxshi model yomon pipeline'ni qutqaradi, aksi esa yo'q.

**Mavzular:**

- Relyatsion model, kalitlar (primary, foreign, surrogate, natural), cheklovlar
- Normalizatsiya (1NF, 2NF, 3NF) va qachon denormalizatsiya qilish kerak
- ER diagrammalar (draw.io, dbdiagram.io)
- OLTP va OLAP farqi; row-store va **columnar** saqlash (nima uchun warehouse'lar tez)
- **Dimensional modeling (Kimball):** fact va dimension, grain, star va snowflake schema
- Fact turlari: transaction, periodic snapshot, accumulating snapshot
- **Slowly Changing Dimensions:** SCD Type 1, 2, 3
- Boshqa yondashuvlar: Inmon, **Data Vault 2.0**, One Big Table (umumiy tushuncha)
- PostgreSQL ichki tuzilishi: indeks turlari (B-tree, GIN, BRIN), partitioning, VACUUM, MVCC
- NoSQL umumiy tushuncha: key-value (Redis), document (MongoDB), wide-column (Cassandra) — qachon kerak

**Resurslar:**

- Kitob: ***The Data Warehouse Toolkit*, Ralph Kimball** — bu sohaning "Injil"i, 1–6 boblarni albatta o'qing
- Kitob: ***Designing Data-Intensive Applications*, Martin Kleppmann** — data engineer uchun eng muhim kitob; hozir 1–3 boblar, qolganini 9 va 11-bosqichlarda
- [CMU Intro to Database Systems](https://15445.courses.cs.cmu.edu/) (Andy Pavlo, YouTube'da bepul) — bazalar ichida nima bo'lishi
- [PostgreSQL rasmiy hujjatlari](https://www.postgresql.org/docs/)
- [Kimball Group dimensional modeling texnikalari](https://www.kimballgroup.com/data-warehouse-business-intelligence-resources/kimball-techniques/dimensional-modeling-techniques/) (bepul)

**Amaliy loyiha:** Kichik internet-do'kon uchun ikki model yarating. Birinchisi 3NF'dagi OLTP baza (mijozlar, buyurtmalar, mahsulotlar, to'lovlar). Ikkinchisi analitika uchun star schema: `fact_orders` va `dim_customer` (SCD Type 2 bilan), `dim_product`, `dim_date`. OLTP'dan star schema'ga ma'lumotni SQL bilan ko'chiring va ER diagrammasini README'ga qo'ying.

**Davomiylik:** 6–8 hafta.

**Tayyorsiz, agar:**

- [ ] Biznes jarayonini eshitib, fact jadvalining grain'ini bir gapda ayta olsangiz
- [ ] SCD Type 2'ni (valid\_from, valid\_to, is\_current) SQL bilan yozib bera olsangiz
- [ ] Nima uchun analitik so'rov columnar bazada tezroq ekanini tushuntira olsangiz
- [ ] Qachon normalizatsiya, qachon denormalizatsiya kerakligini misol bilan ayta olsangiz

## 4-bosqich: Docker va dasturiy muhandislik amaliyotlari

**Maqsad:** "Mening kompyuterimda ishlaydi" muammosidan qutulish. Airflow, Kafka, Spark kabi vositalarni lokal ishga tushirish uchun Docker shart. Shu bilan birga, data engineer avvalo engineer: kodi o'qiladigan, test qilingan va qayta ishlatiladigan bo'lishi kerak.

**Mavzular:**

- Konteyner va virtual mashina farqi; image, container, layer, registry
- `Dockerfile` yozish, multi-stage build, image hajmini kichraytirish
- **Docker Compose:** bir nechta servis (Postgres + Python app + Airflow) bitta faylda
- Volume va network, muhit o'zgaruvchilari va secretlar
- `Makefile` bilan buyruqlarni soddalashtirish
- Loyiha tuzilmasi, README yozish, semantic versioning
- Clean code tamoyillari: kichik funksiyalar, idempotentlik, konfiguratsiyani koddan ajratish
- Kubernetes faqat tushuncha darajasida (pod, deployment, service) — chuqurroq 11-bosqichda

**Resurslar:**

- [Docker rasmiy Get Started](https://docs.docker.com/get-started/) (bepul)
- [DataTalksClub Data Engineering Zoomcamp](https://github.com/DataTalksClub/data-engineering-zoomcamp) 1-modul (bepul, Docker + Postgres + Terraform)
- Kitob: *Docker Deep Dive*, Nigel Poulton
- Kitob: *Clean Code*, Robert Martin yoki *The Pragmatic Programmer* (biri yetarli)

**Amaliy loyiha:** 2-bosqichdagi API pipeline'ingizni Docker'ga o'tkazing. `docker-compose.yml` PostgreSQL, pipeline konteyneri va pgAdmin yoki Metabase'ni ko'tarsin. Hamma narsa bitta `docker compose up` bilan ishga tushsin, ma'lumot esa volume'da saqlansin.

**Davomiylik:** 3–4 hafta.

**Tayyorsiz, agar:**

- [ ] Har qanday Python loyihasi uchun 5 daqiqada `Dockerfile` yoza olsangiz
- [ ] Bir nechta servisli `docker-compose.yml` yozib, ular o'rtasida tarmoqni sozlay olsangiz
- [ ] Konteyner ichiga kirib (`docker exec`), loglarini o'qib, xatoni topa olsangiz
- [ ] Boshqa odam README'ingizni o'qib, loyihani yordamsiz ishga tushira olsa

## 5-bosqich: ETL/ELT va Airflow (orkestratsiya)

**Maqsad:** Bir martalik skriptdan har kuni o'z-o'zidan ishlaydigan, xatoda qayta urinadigan va kuzatiladigan pipeline'ga o'tish. Bu bosqichdan keyin siz haqiqiy data engineer ishini qila boshlaysiz.

**Mavzular:**

- ETL va ELT farqi; batch va streaming; full load va **incremental load**
- **Idempotentlik:** pipeline'ni 10 marta ishga tushirsangiz ham natija bir xil bo'lishi
- Backfill, watermark, Change Data Capture (CDC) tushunchasi
- Fayl formatlari: CSV, JSON, **Parquet**, Avro; siqish (Snappy, ZSTD)
- Data lake qatlamlari: raw/bronze, cleaned/silver, curated/gold (medallion arxitektura)
- **Airflow:** DAG, task, operator, sensor, XCom, scheduling, `catchup`, retry, SLA
- TaskFlow API, dinamik task mapping, connection va variable'lar
- Airflow arxitekturasi: scheduler, executor (Local, Celery, Kubernetes), metadata DB
- Muqobillar haqida bilish: **Dagster**, Prefect (Dagster asset-based yondashuvi tobora mashhur)
- Ingestion vositalari: Airbyte, Fivetran, dlt (tushuncha va bitta amaliy misol)

**Resurslar:**

- [Apache Airflow rasmiy hujjatlari](https://airflow.apache.org/docs/) va [Astronomer Academy](https://academy.astronomer.io/) (bepul sertifikat ham bor)
- Kitob: ***Data Pipelines with Apache Airflow***, Bas Harenslak va Julian de Ruiter (Manning)
- Kitob: ***Fundamentals of Data Engineering***, Joe Reis va Matt Housley — butun sohaning xaritasi, shu bosqichda boshlang
- [DataTalksClub DE Zoomcamp](https://github.com/DataTalksClub/data-engineering-zoomcamp) orkestratsiya moduli
- [Start Data Engineering blogi](https://www.startdataengineering.com/) — amaliy maqolalar

**Amaliy loyiha:** Docker Compose'da Airflow ko'taring. Kunlik DAG yozing: API'dan ma'lumot oladi, raw qatlamga Parquet sifatida saqlaydi, tozalab PostgreSQL'ga incremental yuklaydi va 3-bosqichdagi star schema'ni yangilaydi. DAG idempotent bo'lsin va o'tgan 30 kunni backfill qila olsin. Xato bo'lganda Telegram yoki Slack'ga xabar yuborsin.

**Davomiylik:** 6–8 hafta.

**Tayyorsiz, agar:**

- [ ] `execution_date`/`logical_date` nima ekanini va backfill qanday ishlashini tushuntira olsangiz
- [ ] DAG'ingizni bir kun uchun 3 marta qayta ishga tushirsangiz ham dublikat paydo bo'lmasa
- [ ] Incremental load'ni watermark bilan yoza olsangiz
- [ ] Nima uchun og'ir hisob-kitobni Airflow worker'ida emas, warehouse yoki Spark'da qilish kerakligini ayta olsangiz

## 6-bosqich: dbt va zamonaviy data warehouse

**Maqsad:** Warehouse ichidagi transformatsiyalarni dasturiy kod kabi boshqarish: versiyalangan, test qilingan, hujjatlashtirilgan va qayta ishlatiladigan. Hozirgi bozorda dbt eng ko'p so'raladigan vositalardan biri.

**Mavzular:**

- **Cloud warehouse'lar:** Snowflake, BigQuery, Databricks SQL, Redshift. Arxitekturasi: compute va storage ajratilgani, narx modeli
- **dbt Core:** model, `ref()`, `source()`, materializatsiya (view, table, incremental, ephemeral)
- Loyiha tuzilmasi: staging → intermediate → marts
- dbt testlari (`unique`, `not_null`, `relationships`, `accepted_values`), custom testlar, unit testlar
- Jinja va macro'lar, paketlar (`dbt_utils`, `dbt_expectations`)
- Snapshot'lar (SCD Type 2 avtomatik), seed'lar
- Hujjatlar va lineage grafigi (`dbt docs`)
- Incremental modellar strategiyalari: `merge`, `append`, `insert_overwrite`
- Semantic layer va metrikalar (tushuncha darajasida)

**Qaysi warehouse?** Boshlash uchun **BigQuery** (bepul sandbox, kartasiz) yoki **Snowflake** (30 kunlik bepul sinov) qulay. Lokal mashq uchun **DuckDB** + dbt eng tez yo'l. Bittasini chuqur o'rganing, qolganlari o'xshash.

**Resurslar:**

- [dbt Learn](https://learn.getdbt.com/) — rasmiy bepul kurslar (dbt Fundamentals'dan boshlang)
- [dbt Best Practices qo'llanmasi](https://docs.getdbt.com/best-practices) — loyiha tuzilmasi bo'yicha
- [Snowflake Badges / Hands-on Essentials](https://learn.snowflake.com/) (bepul)
- [BigQuery hujjatlari](https://cloud.google.com/bigquery/docs) va Google Cloud Skills Boost
- [jaffle\_shop](https://github.com/dbt-labs/jaffle-shop) — namuna dbt loyihasi

**Amaliy loyiha:** 5-bosqichdagi pipeline'ni ELT'ga aylantiring: Airflow xom ma'lumotni warehouse'ga (BigQuery yoki DuckDB) yuklaydi, dbt esa staging, intermediate va mart qatlamlarini quradi. Kamida 15 ta model, 30 ta test, bitta snapshot va bitta incremental model bo'lsin. Airflow dbt'ni ishga tushirsin (Cosmos paketi yoki BashOperator orqali). `dbt docs` saytini GitHub Pages'ga joylang.

**Davomiylik:** 5–6 hafta.

**Tayyorsiz, agar:**

- [ ] Yangi manba qo'shilganda staging → mart yo'lini mustaqil qura olsangiz
- [ ] Incremental model nima uchun va qachon kerakligini, uning xavflarini (kech kelgan ma'lumot) tushuntira olsangiz
- [ ] Lineage grafigidan biror ustun qayerdan kelganini topa olsangiz
- [ ] Warehouse narxini nima oshirishini (skanerlangan hajm, compute vaqti) ayta olsangiz

## 7-bosqich: Apache Spark va katta ma'lumotlar

**Maqsad:** Bitta kompyuterga sig'maydigan ma'lumotni taqsimlangan tarzda qayta ishlash. Spark'ni faqat ishlatish emas, uning ichida nima bo'layotganini tushunish muhim, chunki sekin Spark job'larni tuzatish middle va senior'ning asosiy ishi.

**Mavzular:**

- Taqsimlangan hisoblash asoslari: MapReduce g'oyasi, partitioning, shuffle, data locality
- Spark arxitekturasi: driver, executor, cluster manager; job → stage → task
- RDD, **DataFrame API** (asosiy), Spark SQL
- Lazy evaluation, transformation va action, DAG va Catalyst optimizer
- **Performance:** partition soni, `repartition` va `coalesce`, **broadcast join**, **data skew** va salting, caching, AQE (Adaptive Query Execution)
- Spark UI'ni o'qish: qaysi stage sekin va nima uchun
- Xotira muammolari: OOM, spill, executor sozlamalari
- Fayl tartibi: partitionlangan Parquet, "small files" muammosi
- **Open table formatlari:** Delta Lake, Apache Iceberg, Hudi (ACID, time travel, schema evolution)
- Structured Streaming asoslari (9-bosqichda chuqurroq)

**Resurslar:**

- Kitob: ***Spark: The Definitive Guide***, Bill Chambers va Matei Zaharia
- Kitob: ***Learning Spark, 2nd Edition*** (Databricks'dan [bepul PDF](https://www.databricks.com/resources/ebook/learning-spark-from-oreilly))
- [Databricks Free Edition](https://www.databricks.com/learn/free-edition) — bepul notebook muhiti
- [Spark rasmiy hujjatlari](https://spark.apache.org/docs/latest/), ayniqsa "Performance Tuning" bo'limi
- [DataTalksClub DE Zoomcamp](https://github.com/DataTalksClub/data-engineering-zoomcamp) batch moduli

**Amaliy loyiha:** NYC Taxi ma'lumotining 1–2 yilini (o'nlab GB) PySpark bilan qayta ishlang. Raw CSV/Parquet'dan bronze → silver → gold qatlamlarini Delta Lake yoki Iceberg formatida quring. Ataylab skew'li join yarating, Spark UI'da muammoni toping, keyin broadcast yoki salting bilan tuzating. Oldin va keyingi vaqtni README'da solishtiring.

**Davomiylik:** 8–10 hafta.

**Tayyorsiz, agar:**

- [ ] Spark UI'ga qarab eng sekin stage'ni va uning sababini (shuffle, skew, spill) topa olsangiz
- [ ] Qachon broadcast join ishlatishni va uning chegarasini ayta olsangiz
- [ ] Delta yoki Iceberg oddiy Parquet'dan nimasi bilan farq qilishini tushuntira olsangiz
- [ ] Qachon Spark kerak emasligini (DuckDB yoki warehouse yetarli bo'lgan holatlar) ayta olsangiz

## 8-bosqich: Cloud (AWS) va Infrastructure as Code (Terraform)

**Maqsad:** Lokal loyihalarni cloud'ga ko'chirish, cloud servislarini to'g'ri tanlash va infratuzilmani qo'lda bosish o'rniga kod bilan yaratish. Bitta cloud'ni chuqur bilish uchtasini yuzaki bilishdan yaxshiroq.

**Qaysi cloud?** Standart tavsiya **AWS**, chunki xalqaro bozorda vakansiyalar eng ko'p. Agar maqsadingiz banklar yoki Microsoft ekotizimidagi yirik kompaniyalar bo'lsa, **Azure** tanlang (Azure Data Factory, Synapse, Fabric, Databricks). Avval nishondagi 20 ta vakansiyani ko'rib chiqing va ko'proq uchragan cloud'ni tanlang.

**Mavzular (AWS misolida, Azure ekvivalenti qavsda):**

- Asoslar: IAM (rollar, policy, least privilege), region va AZ, VPC asoslari, billing va budget alert
- Saqlash: **S3** (ADLS Gen2), storage class'lar, lifecycle policy
- Hisoblash: EC2, Lambda (Azure Functions), ECS/Fargate
- Data servislari: **Glue** (Data Factory), **Athena**, **EMR** (HDInsight/Databricks), **Redshift** (Synapse/Fabric)
- Katalog va ruxsatlar: Glue Data Catalog, Lake Formation (Unity Catalog / Purview)
- Orkestratsiya: MWAA (managed Airflow), Step Functions
- Streaming: Kinesis (Event Hubs), MSK (managed Kafka)
- Monitoring: CloudWatch (Azure Monitor)
- Secret'lar: Secrets Manager (Key Vault)
- **Terraform:** provider, resource, variable, output, module, state (remote state S3 + lock), `plan`/`apply`, workspace'lar

**Resurslar:**

- [AWS Skill Builder](https://skillbuilder.aws/) (ko'p kurslar bepul) va [AWS Free Tier](https://aws.amazon.com/free/)
- Sertifikat: **AWS Certified Data Engineer – Associate (DEA-C01)**; Azure uchun **DP-700 (Fabric Data Engineer)**
- Adrian Cantrill'ning AWS kurslari (pullik, juda chuqur) yoki Stephane Maarek (Udemy, arzon)
- [Terraform rasmiy tutoriallari](https://developer.hashicorp.com/terraform/tutorials) (bepul)
- Kitob: *Terraform: Up & Running*, Yevgeniy Brikman

**Muhim ogohlantirish:** Cloud'da birinchi kuni **budget alert** o'rnating (masalan, $10). Ishlatilmagan resurslarni o'chiring. Talabalar cloud'da kutilmagan $500 hisob olishi kam uchraydigan holat emas.

**Amaliy loyiha:** Butun platformangizni AWS'ga Terraform bilan ko'chiring: S3'da bronze/silver/gold bucket'lar, Glue Catalog, Athena orqali so'rovlar, Lambda yoki ECS'da ingestion, Spark job uchun EMR Serverless yoki Glue job. Hamma resurs `terraform apply` bilan yaratilsin va `terraform destroy` bilan o'chirilsin. Arxitektura diagrammasini README'ga qo'ying.

**Davomiylik:** 8–10 hafta (sertifikat bilan birga).

**Tayyorsiz, agar:**

- [ ] Bir xil vazifa uchun Glue, EMR va Lambda o'rtasida narx va murakkablik bo'yicha tanlov qila olsangiz
- [ ] IAM policy'ni o'qib, unda qanday xavfli ruxsat borligini ko'ra olsangiz
- [ ] Terraform state nima ekanini va nima uchun uni remote saqlash kerakligini tushuntira olsangiz
- [ ] Butun infratuzilmangizni o'chirib, 15 daqiqada qayta ko'tara olsangiz

## 9-bosqich: Streaming va Apache Kafka

**Maqsad:** Ma'lumotni kunda bir marta emas, sodir bo'lgan zahoti (soniyalar ichida) qayta ishlash. Streaming murakkabroq, shuning uchun u batch'ni yaxshi bilganingizdan keyin keladi.

**Mavzular:**

- Event-driven arxitektura, pub/sub, batch va stream farqi; qachon real-time haqiqatan kerak
- **Kafka asoslari:** broker, topic, partition, offset, replication, producer, consumer, consumer group
- Kafka kafolatlari: at-most-once, at-least-once, **exactly-once**; idempotent producer
- Ordering, key tanlash va partitioning
- Schema Registry, Avro/Protobuf, schema evolution
- **Kafka Connect** va **Debezium** (CDC: Postgres o'zgarishlarini Kafka'ga oqizish)
- Stream processing: Spark Structured Streaming, **Apache Flink** (tushuncha + bitta misol)
- Windowing (tumbling, sliding, session), watermark, kech kelgan event'lar
- Stateful processing va checkpoint'lar
- Managed muqobillar: AWS Kinesis/MSK, Confluent Cloud, Redpanda

**Resurslar:**

- Kitob: ***Kafka: The Definitive Guide*, 2nd Edition** (Confluent'dan bepul PDF)
- [Confluent Developer kurslari](https://developer.confluent.io/courses/) (bepul, juda sifatli)
- *Designing Data-Intensive Applications* 11-bob (Stream Processing)
- Kitob: *Streaming Systems*, Tyler Akidau — nazariya uchun (keyinroq, middle darajada)
- [Debezium tutorial](https://debezium.io/documentation/reference/stable/tutorial.html)

**Amaliy loyiha:** Docker Compose'da Kafka (KRaft rejimi), Schema Registry va Debezium ko'taring. Postgres'dagi `orders` jadvalidagi o'zgarishlarni Debezium orqali Kafka'ga oqizing. Spark Structured Streaming yoki Flink bilan 1 daqiqalik oynalarda daromadni hisoblab, Delta/Iceberg jadvaliga yozing. Real-time dashboard (Grafana yoki Streamlit) qo'shing.

**Davomiylik:** 5–6 hafta.

**Tayyorsiz, agar:**

- [ ] Partition va consumer group qanday birga ishlashini chizib bera olsangiz
- [ ] Exactly-once qanday erishilishini va uning narxini tushuntira olsangiz
- [ ] Kech kelgan event'ni watermark qanday boshqarishini ayta olsangiz
- [ ] Biznesga "bu yerda real-time kerak emas, 15 daqiqalik batch yetarli" deb asoslab bera olsangiz

## 10-bosqich: Data quality, testing, CI/CD va observability

**Maqsad:** Pipeline ishlashi yetarli emas, unga ishonish kerak. Bu bosqich "ishlaydigan" pipeline'ni "production'ga tayyor" pipeline'ga aylantiradi va junior'ni middle'dan ajratadigan narsa aynan shu.

**Mavzular:**

- **Data quality o'lchovlari:** to'liqlik, aniqlik, unikallik, yangilik (freshness), izchillik, validlik
- Vositalar: dbt testlari, **Great Expectations** yoki **Soda**, `dbt_expectations`
- **Data contracts:** manba jamoasi bilan sxema va sifat kelishuvi
- Testlash piramidasi: unit test (Python va dbt), integration test, end-to-end test, test ma'lumotlari
- **CI/CD:** GitHub Actions; har PR'da lint, test, `dbt build --select state:modified+` (Slim CI)
- Muhitlar: dev, staging, prod; blue/green deploy yoki write-audit-publish (WAP) patterni
- **Observability:** loglar, metrikalar, alertlar; freshness va volume monitoringi; anomaly detection
- Lineage: OpenLineage, Marquez yoki dbt lineage
- Incident boshqaruvi: runbook, postmortem, on-call
- Pre-commit hook'lar, kod review madaniyati

**Resurslar:**

- Kitob: ***Data Quality Fundamentals***, Barr Moses va boshqalar (O'Reilly)
- [Great Expectations hujjatlari](https://docs.greatexpectations.io/) va [Soda hujjatlari](https://docs.soda.io/)
- [GitHub Actions hujjatlari](https://docs.github.com/en/actions)
- [dbt Slim CI qo'llanmasi](https://docs.getdbt.com/best-practices/best-practice-workflows)
- Kitob: *Driving Data Quality with Data Contracts*, Andrew Jones

**Amaliy loyiha:** Oldingi loyihalaringizdan eng kattasini olib, unga to'liq CI/CD qo'shing: har PR'da `ruff`, `pytest`, `sqlfluff`, dbt testlari va Terraform `plan` ishlasin; `main`ga merge bo'lganda avtomatik deploy bo'lsin. Har jadval uchun freshness va row count tekshiruvlari, xatoda Slack/Telegram alert, va bitta yozma runbook qo'shing.

**Davomiylik:** 4–5 hafta.

**Tayyorsiz, agar:**

- [ ] Yomon ma'lumot dashboard'ga yetib bormasdan to'xtatiladigan pipeline qura olsangiz
- [ ] Har PR'da avtomatik test ishlaydigan CI sozlay olsangiz
- [ ] "Ma'lumot kecha yangilanmadi" degan muammoni foydalanuvchi aytmasdan oldin bilsangiz
- [ ] Bitta incident uchun postmortem yoza olsangiz (sabab, ta'sir, oldini olish choralari)

## 11-bosqich: Senior ko'nikmalar

**Maqsad:** Senior data engineer vosita bilan emas, qaror bilan o'lchanadi. U "buni qanday qilaman?" emas, "buni qilish kerakmi, qaysi yo'l arzonroq va ishonchliroq, 2 yildan keyin nima bo'ladi?" deb so'raydi. Bu ko'nikmalar 2–4 yillik real ish davomida, quyidagi yo'nalishlarni ongli ravishda o'stirish orqali shakllanadi.

**1. Arxitektura va system design**

- Data warehouse, data lake, **lakehouse** (Delta/Iceberg + Unity Catalog yoki Glue), data mesh: har birining kuchli va zaif tomonlari
- Lambda va Kappa arxitekturalari; batch va streaming'ni birlashtirish
- Trade-off'lar: build va buy, managed va self-hosted, latency, narx va murakkablik
- Architecture Decision Record (ADR) yozish
- System design mashqi: "kuniga 1 mlrd event qabul qiladigan analitika platformasini loyihalang"

**2. Narx va performance (FinOps)**

- Warehouse narxini kamaytirish: partition va clustering, materializatsiya strategiyasi, compute o'lchamini tanlash, auto-suspend
- Saqlash narxi: siqish, lifecycle, small files compaction
- Spark tuning, so'rov profiling, narxni jamoa yoki loyiha bo'yicha taqsimlash (tagging)

**3. Data governance va xavfsizlik**

- Data catalog va lineage (Unity Catalog, DataHub, OpenMetadata)
- Ruxsatlar: RBAC, row/column-level security, masking
- PII, GDPR va mahalliy shaxsiy ma'lumotlar qonunchiligi, data retention
- Shifrlash (at rest, in transit), audit loglar

**4. Platforma va ishonchlilik**

- Kubernetes'da Airflow va Spark, Helm
- SLA, SLO, SLI belgilash; on-call va incident boshqaruvi
- Disaster recovery, backup, multi-region
- Ichki platforma yaratish: boshqa jamoalar o'zi pipeline qura oladigan shablonlar

**5. Odamlar va biznes**

- Talablarni yig'ish: biznes muammosini texnik yechimga aylantirish
- **Mentoring:** juniorlarga kod review, pair programming, onboarding hujjatlari
- Texnik yozuv: RFC, design doc, postmortem
- Prioritetlash va "yo'q" deyishni bilish; stakeholder bilan muloqot
- ML engineer'lar uchun data: feature store, training data pipeline'lar, LLM/RAG uchun ma'lumot tayyorlash (vector DB tushunchasi)

**Resurslar:**

- ***Designing Data-Intensive Applications***, Martin Kleppmann — to'liq, ikkinchi marta o'qing
- *Fundamentals of Data Engineering* — qayta o'qing, endi boshqacha tushunasiz
- *Data Mesh*, Zhamak Dehghani
- *Staff Engineer*, Will Larson va *The Staff Engineer's Path*, Tanya Reilly — senior va undan yuqori yo'l
- *System Design Interview Vol. 1–2*, Alex Xu (umumiy system design fikrlash uchun)
- Kompaniyalar muhandislik bloglari: Netflix, Uber, Airbnb, Spotify, Databricks, Confluent
- Konferensiya yozuvlari: Data + AI Summit, Current (Kafka Summit), Coalesce (dbt)

**Amaliy yo'l (ish davomida):**

- Ishda kamida bitta pipeline yoki tizimni boshidan oxirigacha o'zingiz loyihalab, ishga tushiring va 6+ oy egalik qiling
- Bitta narx optimizatsiyasini o'lchanadigan natija bilan bajaring (masalan, oylik xarajatni 30% kamaytirish)
- Kamida 2 ta junior'ga mentor bo'ling
- Har chorakda bitta design doc yoki ADR yozing
- Open source loyihaga (Airflow, dbt, dlt) hissa qo'shing yoki texnik blog yuriting

**Senior'ga tayyorsiz, agar:**

- [ ] Noaniq biznes talabidan to'liq arxitekturani, uning narxini va xavflarini mustaqil taklif qila olsangiz
- [ ] Production incident'da jamoani tinch boshqarib, ildiz sababni topa olsangiz
- [ ] Qarorlaringizni yozma ravishda, trade-off'lari bilan asoslay olsangiz
- [ ] Jamoangizdagi juniorlar sizning review va mentorligingiz tufayli tezroq o'sayotgan bo'lsa
- [ ] Rahbaringiz texnik qarorlar bo'yicha sizga tayanib qolgan bo'lsa

## Portfolio, ish topish va karyera darajalari

**Ish izlashni 6-bosqichdan keyin boshlang** (taxminan 9–11-oy). Junior vakansiyalar odatda SQL, Python, Airflow, dbt va bitta cloud'ni so'raydi. Qolgan bosqichlarni ishlab turib davom ettirish tezroq o'sish beradi, chunki real ma'lumot va real muammolar hech qanday kurs bera olmaydigan tajriba.

**Portfolio uchun 3 ta kuchli loyiha yetarli** (10 ta kichik loyihadan yaxshiroq):

1. **Batch ELT platforma:** API → Airflow → warehouse → dbt → dashboard, Docker va testlar bilan (5–6-bosqichlar)
2. **Cloud lakehouse:** Terraform + S3 + Spark + Iceberg/Delta, katta hajmli ma'lumot va performance tahlili bilan (7–8-bosqichlar)
3. **Real-time pipeline:** Postgres → Debezium → Kafka → Spark/Flink → dashboard (9-bosqich)

Har loyihada: aniq README (muammo, arxitektura diagrammasi, qanday ishga tushirish, qabul qilingan qarorlar va nima uchun), CI, testlar va qisqa demo video yoki skrinshotlar bo'lsin. Ma'lumot sifatida o'zbek tilidagi yoki mahalliy ochiq ma'lumotlardan foydalansangiz (data.gov.uz, valyuta kurslari, ob-havo), suhbatda ajralib turasiz.

**Karyera darajalari va kutilmalar:**

| Daraja | Odatiy tajriba | Nima kutiladi |
| --- | --- | --- |
| Junior | 0–2 yil | Aniq berilgan vazifani yordam bilan bajaradi; SQL, Python, bitta orkestrator |
| Middle | 2–4 yil | Pipeline'ni mustaqil loyihalab, production'da qo'llab-quvvatlaydi; testlar, monitoring, performance |
| Senior | 4–7 yil | Tizim arxitekturasi, trade-off qarorlari, narx, mentoring, noaniq talablarni hal qilish |
| Staff / Lead | 7+ yil | Bir nechta jamoa bo'ylab texnik yo'nalish, platforma strategiyasi |

**Suhbatga tayyorgarlik (ish izlash vaqtida):** SQL live coding (DataLemur, StrataScratch), Python masalalar (LeetCode Easy–Medium, ayniqsa string va dict), data modeling savollari ("Uber uchun star schema chizing"), pipeline design savollari va loyihalaringiz haqida chuqur gapirish. Zach Wilson'ning [DataExpert.io](https://www.dataexpert.io/) bepul materiallari va YouTube kanali foydali.

**Sertifikatlar:** majburiy emas, lekin junior uchun rezyumeni filtrdan o'tkazishga yordam beradi. Eng foydalilari: AWS Data Engineer Associate yoki Azure DP-700, dbt Analytics Engineering, Databricks Data Engineer Associate. Ulardan 1–2 tasi yetarli.

## Haftalik rejim, ixtiyoriy texnologiyalar va maslahatlar

**Haftalik rejim (12–15 soat):**

| Kun | Vaqt | Nima qilish |
| --- | --- | --- |
| Dushanba–Juma | Har kuni 1.5 soat | 30 daqiqa nazariya (kitob/kurs), 60 daqiqa kod yozish |
| Shanba | 3–4 soat | Bosqich loyihasi ustida ishlash |
| Yakshanba | 1–2 soat | Takrorlash, 3–5 ta SQL masala, haftalik yozma xulosa |

Kursni tomosha qilish o'rganish emas. Vaqtingizning kamida 60% qismi o'zingiz kod yozishga ketishi kerak.

**Ixtiyoriy texnologiyalar (faqat ish talab qilsa):**

- **Informatica, SSIS, Talend, Oracle ODI** — eski (legacy) ETL vositalari. Banklar va yirik korxonalarda hali uchraydi. Agar aniq vakansiya so'rasa, asoslarni 2–3 haftada o'rganasiz, chunki ETL tushunchalari bir xil.
- **Hadoop (HDFS, Hive, MapReduce)** — tarix sifatida bilish yetarli; yangi loyihalarda deyarli ishlatilmaydi.
- **Scala/Java** — Spark va Flink ichki qismi uchun foydali, lekin Python yetarli. Middle darajadan keyin qarab ko'ring.
- **Microsoft Fabric, Power BI** — Azure yo'lini tanlasangiz muhim.
- **Go yoki Rust** — platforma muhandisligi uchun, senior darajadan keyin.

**Ko'p uchraydigan xatolar:**

- Bir vaqtda 5 ta vosita o'rganish. Bitta bosqichni tugatib, keyin keyingisiga o'ting.
- SQL va data modeling'ni tezda o'tib, darhol Spark yoki Kafka'ga sakrash. Poydevor zaif bo'lsa, keyin hammasi qiyin bo'ladi.
- "Tutorial hell": 10 ta kurs ko'rib, bitta ham loyiha qilmaslik.
- Faqat vositalarni o'rganib, tamoyillarni (idempotentlik, modeling, trade-off) o'tkazib yuborish. Vositalar 3–5 yilda o'zgaradi, tamoyillar qoladi.
- Ingliz tilini e'tiborsiz qoldirish.

**Hamjamiyat:**

- [DataTalksClub Slack](https://datatalks.club/slack.html) — bepul, juda faol hamjamiyat
- [r/dataengineering](https://www.reddit.com/r/dataengineering/) — real muhandislar fikrlari
- LinkedIn'da Zach Wilson, Joe Reis, Chad Sanderson, Benjamin Rogojan (Seattle Data Guy) kabi mutaxassislarni kuzating
- O'zbek tilidagi IT Telegram guruhlarida o'rganganlaringizni yozib boring; boshqalarga tushuntirish eng yaxshi o'rganish usuli

**Keyingi qadam:** Hoziroq 0-bosqichdan boshlang. Agar sizda allaqachon dasturlash, SQL yoki IT tajribasi bo'lsa, ayting, bosqichlar va muddatlarni sizga moslab qisqartiraman.
