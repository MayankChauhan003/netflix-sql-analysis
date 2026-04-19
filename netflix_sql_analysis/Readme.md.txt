# 🎬 Netflix Data Analysis using SQL

## 📌 Project Overview

This project analyzes Netflix Movies and TV Shows dataset using SQL to uncover insights about content trends, genres, countries, and growth patterns. The goal is to simulate real-world business analysis for an OTT platform.

---

## 🎯 Objectives

* Analyze distribution of Movies vs TV Shows
* Identify top content-producing countries
* Discover most popular genres
* Study content growth over the years
* Understand ratings and audience targeting

---

## 🛠️ Tools & Technologies

* MySQL Workbench
* SQL (Joins, Aggregations, CTEs, Window Functions)
* Dataset: Netflix Titles (Kaggle)

---

## 📂 Dataset Description

The dataset contains information about Netflix content including:

* Title
* Type (Movie / TV Show)
* Director
* Cast
* Country
* Release Year
* Rating
* Duration
* Genre (listed_in)
* Date Added

---

## 🧹 Data Cleaning Steps

* Converted `date_added` to proper date format
* Handled NULL values in country and director
* Verified data consistency

---

## 📊 Key SQL Analysis

### 1. Movies vs TV Shows

```sql
SELECT type, COUNT(*) 
FROM netflix
GROUP BY type;
```

---

### 2. Content Growth Over Years

```sql
SELECT release_year, COUNT(*) 
FROM netflix
GROUP BY release_year
ORDER BY release_year;
```

---

### 3. Top 10 Countries Producing Content

```sql
SELECT country, COUNT(*) 
FROM netflix
GROUP BY country
ORDER BY COUNT(*) DESC
LIMIT 10;
```

---

### 4. Most Popular Genres

```sql
SELECT listed_in, COUNT(*) 
FROM netflix
GROUP BY listed_in
ORDER BY COUNT(*) DESC
LIMIT 10;
```

---

### 5. Ratings Distribution

```sql
SELECT rating, COUNT(*) 
FROM netflix
GROUP BY rating
ORDER BY COUNT(*) DESC;
```

---

## 📈 Key Insights

* Movies dominate Netflix content compared to TV Shows
* Significant growth in content after 2015
* USA is the leading content producer
* Drama and International genres are most common
* Majority of content targets mature audiences

---

## 📌 Conclusion

This analysis highlights how Netflix has expanded its content library over time, focusing on diverse genres and global production. Such insights can help OTT platforms make data-driven decisions on content strategy.

---

## 🚀 Future Improvements

* Build dashboard using Power BI or Tableau
* Perform deeper genre classification
* Add user engagement analysis (if data available)

---

## 👨‍💻 Author

Mayank Chauhan
(MCA Student | Aspiring Data Analyst)
