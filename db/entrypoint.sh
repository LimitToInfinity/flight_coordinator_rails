#!/bin/sh
set -e

# Initialize waiting counter
waitingCount=0
# Wait for the database to be ready
echo "Waiting for PostgreSQL #$waitingCount..."
while ! pg_isready -h "$DATABASE_HOST" -p "$DATABASE_PORT" -U "$DATABASE_USER"; do
  sleep 1
  counter=$((counter + 1))

  # Check if the counter has reached the maximum wait time
  if [ "$counter" -ge "$waitingCount" ]; then
    echo "Timeout: PostgreSQL did not become available after $waitingCount seconds."
    exit 1
  fi
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