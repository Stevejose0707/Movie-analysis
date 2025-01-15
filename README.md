The primary purpose of this script is to establish a structured database for managing movie-related data, enabling efficient storage, querying, and analysis of movies and their distribution companies.

Breakdown:
1. Database Setup:
A new database named movies is created and selected for use.
This ensures all subsequent operations are performed within the movies database.
2. Table Creation:
distribution_companies:

Stores the names of movie distribution companies, identified by unique id values.
The column company_name is altered to accommodate up to 400 characters, allowing detailed company names if necessary.
moviesinfo:

Stores detailed information about movies, including:
Title (movie_tittle)
IMDB Rating (imbd_rating)
Release Year (year_realesed)
Budget and Box Office Revenue (budget, box_office)
Distribution Company (distribution_company_id, a foreign key)
Language (language)
3. Data Insertion:
Inserts sample data into both tables:
The distribution_companies table includes several major studios like Columbia Pictures, Warner Bros., and Paramount Pictures.
The moviesinfo table contains iconic films such as The Shawshank Redemption, The Godfather, and The Dark Knight, along with their details like IMDB ratings, budget, and revenue.
4. Queries for Data Analysis:
Basic Retrieval:

Retrieve all data from distribution_companies.
Retrieve selected columns (movie_tittle, imbd_rating, year_realesed) from moviesinfo.
Filtering Data:

List movies with box office earnings greater than $300 million.
Search for movies with titles matching a specific pattern (e.g., containing "Godfather").
Find movies released before 2001 with IMDB ratings greater than 9.
Sorting and Aggregation:

Sort movies released after 1991 by release year.
Group movies by language and count their occurrences.
Group movies by language and release year to analyze trends.
Calculations:

Calculate the average budget of movies with a budget greater than $50 million, grouped by language.
Joining Tables:

Join moviesinfo with distribution_companies to link movies to their respective distribution companies.
Key Features:
Relational Design: The use of foreign keys (distribution_company_id) ensures that movie data is linked to distribution companies, avoiding redundancy.
Powerful Queries: The script includes examples of filtering, grouping, sorting, and aggregation, demonstrating how to derive insights from the data.
Sample Data: Inserts well-known movies and companies for testing, making the database immediately usable.
Use Cases:
Analyzing box office performance by distribution company.
Studying trends in movie releases by year, language, or genre.
Identifying high-performing movies based on IMDB ratings or earnings.
Comparing average budgets and box office revenues by language or studio.
Conclusion:
This script provides a foundation for building a movie analytics database. It supports robust data storage and querying, making it suitable for use cases like movie industry analysis, financial performance tracking, and audience behavior studies.
