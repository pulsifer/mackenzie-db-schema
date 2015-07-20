# Mackenzie - Mackenzie Database Schema



This repository contains the database schema and related database logic to stores and manage Mackenzie schemas. The database is currently used by the Mackenzie Basin DMS application. The schema was build on PostgreSQL and has not been tested against other database system.

## Usage

````bash
$ createdb mackenzie_dev
$ psql mackenzie_dev -f ./dist/mackenzie_dev.sql
````

## Schemas

* **app**: Objects specific to the mackenzie basin web app.
* **ps.**: Main objects used for the core permenant sampling plot data.
* **lookup**: mackenzie lookup objects.
* **staging**: Objects used to validate staged data and eventually commit.
* **test**: Unit test objects.
* **fake**: Fake data utilities used by test functions.

## Writing Tests
All test functions are created against the test schema. The fake schema utility functions are used to hydrate the database with data in order to replicate an upload. Inserting an upload using the fake functions only sets values to filed which are required to fullfill the referential integrety constraints. It it the responsibility of the test writer to update the tables with appropriate data to satisfy the test subject.


## Testing
In order to test you will need make and psql. Running the test will build, create a test db (afgo_dev), populate the database with the built SQL script, run all the tests and finally drop the test db.

````bash
$ make test
````

## Building
In order to build from scratch you will need make. You can build one schema or all. The scripts are written to the ``./dist`` folder.

````bash
# build themes schema SQL script
# makes ./dist/themes.sql
$ make themes.sql

# build complete SQL script
# makes ./dist/mackenzie-db.sql
$ make
````