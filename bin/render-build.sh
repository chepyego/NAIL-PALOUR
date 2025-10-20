#!/usr/bin/env bash

# Exit on error
set -o errexit

bundle install
bin/rails assets:precompile
bin/rails assets:clean

# Ensure the database schema is up-to-date BEFORE seeding any data
bin/rails db:migrate

# Seed the database
bin/rails db:seed

# NOTE: If you upgrade to a paid Render plan, move bin/rails db:migrate 
# to the Pre-Deploy Command field in the Render UI for zero-downtime deploys.
