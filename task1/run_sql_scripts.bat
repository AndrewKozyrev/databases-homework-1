@echo off
SET CONTAINER_NAME=postgres_db
SET DB_NAME=postgres
SET DB_USER=student09
SET DB_PASSWORD=mF2gT0pO6bV4wJ5m

:: List of SQL files to be executed
SET SQL_FILES=tb_artists.sql tb_genres.sql tb_albums.sql tb_tracks.sql tb_track_genres.sql fill_tables.sql

:: Loop through each SQL file and execute it
FOR %%f IN (%SQL_FILES%) DO (
    echo Executing %%f ...
    docker exec -i %CONTAINER_NAME% psql -U %DB_USER% -d %DB_NAME% -f /scripts/%%f
    IF ERRORLEVEL 1 (
        echo Error occurred while executing %%f.
        EXIT /B 1
    ) ELSE (
        echo %%f executed successfully.
    )
)

echo All SQL scripts executed.
