#!/bin/sh
set -e

# Initialize waiting counter
waitingCount=0
# Wait for the database to be ready
echo "Waiting for PostgreSQL #$waitingCount..."
while ! pg_isready -h "$DATABASE_HOST" -p "$DATABASE_PORT" -U "$DATABASE_USER"; do
  sleep 1
  waitingCount=$((waitingCount + 1))

  # Check if the counter has reached the maximum wait time
  if [ $waitingCount -ge 30 ]; then
    echo "Timeout: PostgreSQL did not become available after $waitingCount seconds."
    exit 1
  fi
done

echo "Database is ready"

# Run database migrations
echo "Running database migrations..."
bundle exec rails db:migrate

# Seed the database if needed
echo "Seeding database..."
bundle exec rails db:seed

# Start the Rails server
echo "Starting Rails server..."
exec rails server -b 0.0.0.0