#!/bin/bash

#Run migrations to ensure the database is updated

medusa seed -f seed.json

medusa migrations run

medusa user -e some@email.com -p some-password

#Start development environment
medusa develop