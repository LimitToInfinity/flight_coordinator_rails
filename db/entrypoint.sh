#!/bin/sh
set -e

# Initialize waiting counter
waitingCount=0
# Wait for the database to be ready
echo "Waiting for PostgreSQL #$waitingCount..."
while ! pg_isready -h "$DATABASE_HOST" -p "$DATABASE_PORT" -U "$DATABASE_USER"; do
  sleep 1
  counter=$((counter + 1))
done

echo "Database is ready"

# Run database migrations
echo "Running database migrations..."
rails db:migrate

# Seed the database if needed
echo "Seeding database..."
rails db:seed

# Start the main process
exec "$@"