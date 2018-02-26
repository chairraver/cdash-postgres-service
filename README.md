# cdash-postgres-service

Here are some files with appropriate configuration to start a local
Docker container for the CDash testing dashboard backed by a
PostgreSQL relational database.

CDash is primarily used with [CMake](https://cmake.org/) projects to
collect (nightly) test reports created though continuous integration
platforms like Jenkins.

My goal to create this was to experiment with other programming
languages, Golang in particular, to submit test results to CDash,
possibly writing some adapter software.

A simple `Makefile` is used to provided as a means to build, start and
stop the containers.

    $ make cdash

will build the `cdash` container image, which is based on the
`php:7-apache` image from the Docker hub.

    $ make postgres

builds the `postgres` container image based on the PostgreSQL 10.2
image.

    $ make start
	$ make stop

starts the two containers. Point your browser to

    http://localhost/install.php

to enter the administrator email and password. Then you can normally
use the CDash dashboard and start collecting nightly test results.

This is intended for experimentation/learning purposes only.
