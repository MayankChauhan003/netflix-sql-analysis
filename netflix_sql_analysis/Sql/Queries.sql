-- Database Creation

Create database netflix_db;
use Netflix_db;

-- Table Creation

CREATE TABLE netflix (
    show_id VARCHAR(10),
    type VARCHAR(20),
    title VARCHAR(255),
    director VARCHAR(255),
    cast TEXT,
    country VARCHAR(255),
    date_added VARCHAR(50),
    release_year INT,
    rating VARCHAR(10),
    duration VARCHAR(50),
    listed_in VARCHAR(255),
    description TEXT
);

Select * from netflix LIMIT 10;

-- Convert date format

SET SQL_SAFE_UPDATES = 0;
Update netflix
set date_added = STR_TO_DATE(date_added, '%M %d, %Y');

-- Handle Null values

Select * from netflix where country Is Null or director is null;
Update netflix Set country = 'Unknown' Where country Is Null;

-- Toatl Content

Select COUNT(*) from netflix;

-- Movies vs TV Shows

Select type, COUNT(*) from netflix group by type;

-- Content added over years

Select release_year, COUNT(*) as total from netflix 
Group by release_year order by release_year;

-- Top Countries Producing Content

Select country, COUNT(*) as total from netflix
group by country order by total DESC LIMIT 10;

-- Most Common Genres

Select listed_in, COUNT(*) as total from netflix 
Group by listed_in order by total DESC LIMIT 10;

-- Movies vs TV shows trend

Select type, release_year, COUNT(*) From netflix 
group by type, release_year
order by release_year;

-- Ratings distribution

Select rating, COUNT(*) from netflix
group by rating order by count(*) DESC;

-- Top 5 years with most content

Select release_year, COUNT(*) as total
from netflix group by release_year
order by total DESC
LIMIT 5;

-- Content added per year (using date_added)

Select year(date_added) as year_added, COUNT(*)
from netflix 
Group by year_added
order by year_added;