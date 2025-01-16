# DBMS_Astronomy
## Description
This database is designed to manage and organize data for an interstellar transportation and exploration system where each star system hosts a space station, and spaceships operate much like personal vehicles. The database tracks star systems, space stations, spaceships, spaceships, and crew members, with each spaceship having a dedicated, fixed crew that includes a designated owner

## Purpose of the DBMS
The goal of this Space Station Management Database is to serve as a comprehensive and structured system for tracking and managing various elements and operations within an interstellar space exploration and station management ecosystem.

## More detailed information
Users, Use-case scenarios, specific description of entities as well as RDB Schema can be found in [here](DBMS_description.pdf).

## How to run scripts?
Create a new database in SQL Server Management Studio (or simply upload files to any environment where you can work with SQL). Run provided files in a given order:
1. Run script called [CreateTables](CreateTables.sql). This script would ensure that all tables are firstly dropped (if there were created any) and then would create all tables.
2. Run script called [InsertData](InsertData.sql). This script would fill tables with sample data.
3. Now you are ready to execute other scripts.

## ERD Model of the database
![alt text](https://github.com/friz666/DBMS_Astronomy/blob/main/DatabaseERD.png?raw=true)
