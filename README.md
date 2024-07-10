# Building a Celestial Bodies Database
### Overview
This repository contains the SQL script for creating the universe database in PostgreSQL. The database is designed to store astronomical data related to galaxies, stars, planets, moons, and their types. The database schema adheres to specific requirements and constraints outlined in a challenge prompt. Below is an overview of the database schema and its structure, and how it fulfills the given tasks.
### Database Schema
The universe database consists of the following tables:
1. galaxy
2. star
3. planet
4. moon
5. planet_type

Each table is structured with primary keys, foreign keys, and specific data types to adhere to the requirements of the challenge.
### Table Descriptions and Relationships
#### galaxy
- Primary Key: galaxy_id (INT)
- Columns: name (VARCHAR), distance_to_earth (INT), distance_to_sun (INT), size (INT)

#### star
- Primary Key: star_id (INT)
- Foreign Key: galaxy_id referencing galaxy_id in galaxy
- Columns: name (VARCHAR), distance_to_earth (INT), distance_to_sun (INT), size (INT), active (BOOLEAN)

#### planet
- Primary Key: planet_id (INT)
- Foreign Key: star_id referencing star_id in star
- Columns: name (VARCHAR), distance_to_earth (NUMERIC), distance_to_sun (NUMERIC), inhabited (BOOLEAN), diameter (INT)

#### moon
- Primary Key: moon_id (INT)
- Foreign Key: planet_id referencing planet_id in planet
- Columns: name (VARCHAR), distance_to_earth (NUMERIC), distance_to_sun (NUMERIC), diameter (INT)

#### planet_type
- Primary Key: planet_type_id (INT)
- Columns: name (VARCHAR), planet_id (INT), color (TEXT)

### Database Specifications
#### Data Types Used:
- INT, NUMERIC, VARCHAR, BOOLEAN, TEXT

#### Constraints and Requirements:
- Each primary key follows the naming convention table_name_id.
- Foreign key columns have the same name as the referenced primary key column.
- At least two columns per table do not accept NULL values.
- At least one column per table is required to be UNIQUE.
### Setup Instructions
1. Connect to your PostgreSQL server.
2. Create a new database named universe.
3. Execute the SQL script provided (universe.sql) using psql or any SQL client.
### Conclusion
The universe database project demonstrates the implementation of a PostgreSQL database schema for managing astronomical data. It fulfills specific requirements, including table structure, data types, constraints, and relationships, as outlined in the challenge prompt. For any inquiries or improvements, feel free to contact me.
