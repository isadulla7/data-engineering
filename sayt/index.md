---
title: Mundarija
hide:
  - navigation
  - toc
---

<div class="home" markdown="1">

# Data Engineering: noldan Senior'gacha

<p class="lead">O'zbek tilida, chuqur va amaliy o'quv yo'li. O'n ikkita yo'nalish, har biri darslar, ishlaydigan kod, yechimi yashirin mashqlar va portfolio loyihasidan iborat. Bu sahifa kirish nuqtasi: nima o'tildi, nima navbatda va qayerdan davom etish kerakligi shu yerda.</p>

<div class="now">
  <span class="now-label">Hozir</span>
  <a href="01-sql/01-select-where/">1. SQL · 01-dars: SELECT, WHERE, ORDER BY, LIMIT va NULL</a>
</div>

## Yo'nalishlar

<details class="track" open>
  <summary><span class="no">1</span><span class="nm">SQL (chuqur)</span><span class="st">3 / 10 dars</span></summary>
  <div class="in">
    <p><a href="01-sql/">Yo'nalish sahifasini ochish</a> · <a href="01-sql/00-sozlash/">Muhitni sozlash</a> · <a href="01-sql/atamalar/">📖 Atamalar lug'ati</a></p>
    <div class="scroll"><table><tbody>
      <tr><td>1-hafta</td><td><a href="01-sql/01-select-where/">01. SELECT, WHERE, ORDER BY, LIMIT va NULL</a> <span class="tag ok">tayyor</span> <a class="tag" href="01-sql/01-select-where/mashqlar/">mashqlar</a></td></tr>
      <tr><td>2-hafta</td><td><a href="01-sql/02-funksiyalar-case/">02. Funksiyalar, CASE WHEN va DISTINCT</a> <span class="tag ok">tayyor</span> <a class="tag" href="01-sql/02-funksiyalar-case/mashqlar/">mashqlar</a></td></tr>
      <tr><td>3-hafta</td><td><a href="01-sql/03-group-by/">03. Agregatsiya, GROUP BY va HAVING</a> <span class="tag ok">tayyor</span> <a class="tag" href="01-sql/03-group-by/mashqlar/">mashqlar</a></td></tr>
      <tr><td>4-hafta</td><td>04. JOIN'lar: INNER, LEFT, FULL, self-join, anti-join <span class="tag">navbatda</span></td></tr>
      <tr><td>5-hafta</td><td>05. Subquery va CTE (WITH), rekursiv CTE</td></tr>
      <tr><td>6-hafta</td><td>06. Window funksiyalar (1): ROW_NUMBER, RANK, LAG/LEAD</td></tr>
      <tr><td>7-hafta</td><td>07. Window funksiyalar (2): running total, frame, deduplikatsiya</td></tr>
      <tr><td>8-hafta</td><td>08. DDL, DML, upsert, MERGE va tranzaksiyalar</td></tr>
      <tr><td>9-hafta</td><td>09. Indekslar va EXPLAIN ANALYZE</td></tr>
      <tr><td>10-hafta</td><td>Yakuniy loyiha: Olist e-commerce datasetida 30 biznes savoli</td></tr>
    </tbody></table></div>
  </div>
</details>

<details class="track">
  <summary><span class="no">2</span><span class="nm">Python (data engineer uchun)</span><span class="st">rejada</span></summary>
  <div class="in"><div class="scroll"><table><tbody>
    <tr><td>Py0</td><td>Asoslar: tiplar, kolleksiyalar, funksiyalar, comprehension</td></tr>
    <tr><td>Py1</td><td>Fayllar: CSV, JSON, Parquet · xatolar va logging</td></tr>
    <tr><td>Py2</td><td>OOP, dataclass, modul va paketlar · virtual muhit</td></tr>
    <tr><td>Py3</td><td>Generatorlar: katta fayllarni xotiraga sig'dirmasdan o'qish</td></tr>
    <tr><td>Py4</td><td>API bilan ishlash: pagination, retry, rate limit</td></tr>
    <tr><td>Py5</td><td>Bazaga ulanish: psycopg, SQLAlchemy</td></tr>
    <tr><td>Py6</td><td>pandas, Polars, DuckDB</td></tr>
    <tr><td>Py7</td><td>Testlar (pytest) va kod sifati (ruff, mypy)</td></tr>
    <tr><td>Loyiha</td><td>API'dan kunlik ma'lumot oluvchi, test qilingan Python paketi</td></tr>
  </tbody></table></div></div>
</details>

<details class="track">
  <summary><span class="no">3</span><span class="nm">PostgreSQL va data modeling</span><span class="st">rejada</span></summary>
  <div class="in"><div class="scroll"><table><tbody>
    <tr><td>M0</td><td>Kalitlar, cheklovlar, normalizatsiya va denormalizatsiya</td></tr>
    <tr><td>M1</td><td>OLTP va OLAP · row-store va columnar saqlash</td></tr>
    <tr><td>M2</td><td>Kimball: fact, dimension, grain, star schema</td></tr>
    <tr><td>M3</td><td>Slowly Changing Dimensions (SCD 1, 2, 3)</td></tr>
    <tr><td>M4</td><td>Data Vault, One Big Table · PostgreSQL ichki tuzilishi</td></tr>
    <tr><td>Loyiha</td><td>Internet-do'kon: 3NF OLTP + star schema</td></tr>
  </tbody></table></div></div>
</details>

<details class="track">
  <summary><span class="no">0</span><span class="nm">Linux, terminal va Git</span><span class="st">Docker'dan oldin</span></summary>
  <div class="in"><div class="scroll"><table><tbody>
    <tr><td>L0</td><td>Fayl tizimi, ruxsatlar, matn bilan ishlash (grep, awk, sed)</td></tr>
    <tr><td>L1</td><td>Jarayonlar, Bash skript, cron, SSH</td></tr>
    <tr><td>L2</td><td>Git: branch, merge, rebase, pull request</td></tr>
  </tbody></table></div></div>
</details>

<details class="track">
  <summary><span class="no">4</span><span class="nm">Docker va dasturiy muhandislik</span><span class="st">rejada</span></summary>
  <div class="in"><div class="scroll"><table><tbody>
    <tr><td>D0</td><td>Image, container, Dockerfile, multi-stage build</td></tr>
    <tr><td>D1</td><td>Docker Compose: Postgres + ilova + vizualizatsiya</td></tr>
    <tr><td>D2</td><td>Loyiha tuzilmasi, Makefile, clean code, idempotentlik</td></tr>
  </tbody></table></div></div>
</details>

<details class="track">
  <summary><span class="no">5</span><span class="nm">ETL/ELT va Airflow</span><span class="st">rejada</span></summary>
  <div class="in"><div class="scroll"><table><tbody>
    <tr><td>A0</td><td>ETL va ELT · batch va stream · incremental load va idempotentlik</td></tr>
    <tr><td>A1</td><td>Fayl formatlari va medallion arxitektura</td></tr>
    <tr><td>A2</td><td>Airflow: DAG, operator, sensor, scheduling, backfill</td></tr>
    <tr><td>A3</td><td>Airflow arxitekturasi · Dagster va ingestion vositalari</td></tr>
    <tr><td>Loyiha</td><td>Kunlik, idempotent, backfill qila oladigan pipeline</td></tr>
  </tbody></table></div></div>
</details>

<details class="track">
  <summary><span class="no">6</span><span class="nm">dbt va data warehouse</span><span class="st">rejada</span></summary>
  <div class="in"><div class="scroll"><table><tbody>
    <tr><td>W0</td><td>Snowflake, BigQuery, Databricks: arxitektura va narx</td></tr>
    <tr><td>W1</td><td>dbt: model, ref, source, materializatsiya</td></tr>
    <tr><td>W2</td><td>Testlar, snapshot, macro, incremental modellar</td></tr>
    <tr><td>Loyiha</td><td>Airflow + dbt bilan ELT platforma</td></tr>
  </tbody></table></div></div>
</details>

<details class="track">
  <summary><span class="no">7</span><span class="nm">Apache Spark</span><span class="st">rejada</span></summary>
  <div class="in"><div class="scroll"><table><tbody>
    <tr><td>S0</td><td>Taqsimlangan hisoblash: partition, shuffle</td></tr>
    <tr><td>S1</td><td>Spark arxitekturasi, DataFrame API, Spark SQL</td></tr>
    <tr><td>S2</td><td>Performance: broadcast join, skew, AQE, Spark UI</td></tr>
    <tr><td>S3</td><td>Delta Lake, Iceberg, Hudi</td></tr>
    <tr><td>Loyiha</td><td>NYC Taxi: bronze → silver → gold</td></tr>
  </tbody></table></div></div>
</details>

<details class="track">
  <summary><span class="no">8</span><span class="nm">Cloud (AWS) va Terraform</span><span class="st">rejada</span></summary>
  <div class="in"><div class="scroll"><table><tbody>
    <tr><td>C0</td><td>IAM, S3, hisoblash servislari, billing</td></tr>
    <tr><td>C1</td><td>Glue, Athena, EMR, Redshift</td></tr>
    <tr><td>C2</td><td>Terraform: resource, module, remote state</td></tr>
    <tr><td>Loyiha</td><td>Butun platforma AWS'da, Terraform bilan</td></tr>
  </tbody></table></div></div>
</details>

<details class="track">
  <summary><span class="no">9</span><span class="nm">Kafka va streaming</span><span class="st">rejada</span></summary>
  <div class="in"><div class="scroll"><table><tbody>
    <tr><td>K0</td><td>Broker, topic, partition, offset, consumer group</td></tr>
    <tr><td>K1</td><td>Kafolatlar va exactly-once · Schema Registry</td></tr>
    <tr><td>K2</td><td>Kafka Connect va Debezium (CDC)</td></tr>
    <tr><td>K3</td><td>Stream processing: windowing, watermark, Flink</td></tr>
    <tr><td>Loyiha</td><td>Postgres → Debezium → Kafka → Spark → dashboard</td></tr>
  </tbody></table></div></div>
</details>

<details class="track">
  <summary><span class="no">10</span><span class="nm">Data quality, testing, CI/CD</span><span class="st">rejada</span></summary>
  <div class="in"><div class="scroll"><table><tbody>
    <tr><td>Q0</td><td>Sifat o'lchovlari, Great Expectations, Soda, data contracts</td></tr>
    <tr><td>Q1</td><td>Testlash piramidasi va CI/CD (GitHub Actions)</td></tr>
    <tr><td>Q2</td><td>Observability, lineage, incident va postmortem</td></tr>
  </tbody></table></div></div>
</details>

<details class="track">
  <summary><span class="no">11</span><span class="nm">Senior ko'nikmalar</span><span class="st">ish davomida</span></summary>
  <div class="in"><div class="scroll"><table><tbody>
    <tr><td>Sr0</td><td>Arxitektura va system design: lakehouse, data mesh, trade-off</td></tr>
    <tr><td>Sr1</td><td>Narx va performance (FinOps)</td></tr>
    <tr><td>Sr2</td><td>Governance va xavfsizlik</td></tr>
    <tr><td>Sr3</td><td>Platforma va ishonchlilik: SLA, on-call, DR</td></tr>
    <tr><td>Sr4</td><td>Odamlar: mentoring, design doc, stakeholder</td></tr>
  </tbody></table></div></div>
</details>

<p class="note">To'liq reja, resurslar va har bosqichning "tayyorsiz, agar…" checklisti: <a href="ROADMAP/">Yo'l xaritasi</a>.</p>

## Har bir dars qanday tuzilgan

<div class="scroll"><table class="plain"><tbody>
<tr><td class="num">1</td><td>Maqsad: darsdan keyin nimani qila olasiz</td></tr>
<tr><td class="num">2</td><td>Tushuntirish: diagramma, jadval va misollar bilan</td></tr>
<tr><td class="num">3</td><td>Tuzoqlar: data engineerlar ko'p yiqiladigan joylar</td></tr>
<tr><td class="num">4</td><td>Esda qolarli xulosa: bir jadvalda asosiy qoidalar</td></tr>
<tr><td class="num">5</td><td>queries.sql: darsdagi barcha kod, bazada ishga tushiriladi</td></tr>
<tr><td class="num">6</td><td>Mashqlar: oson, o'rta, qiyin va fikrlash savollari, yechimlar yashirin</td></tr>
</tbody></table></div>

## Ish tartibi

<ol class="try">
  <li>Darsni o'qing va har bir misolni o'zingiz bazada ishga tushiring.</li>
  <li>Mashqlarni yeching. Yechimni ochishdan oldin kamida 15 daqiqa o'zingiz urining.</li>
  <li>Javoblaringizni chatga yuboring. Bo'shliq bo'lsa, o'sha joy boshqacha tushuntiriladi.</li>
  <li>Bo'shliq bo'lmasa, keyingi dars qo'shiladi.</li>
  <li>Har modul oxirida portfolio loyihasi shu repozitoriyga joylanadi.</li>
</ol>

</div>
