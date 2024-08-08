# Use an official Ruby runtime as a parent image
FROM ruby:2.6.6

# Set environment variables
ENV RAILS_ENV=production
ENV RACK_ENV=production

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set the working directory inside the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock /app/

# Install gems
RUN bundle install --without development test

# Copy the rest of the application code
COPY . /app

# Precompile assets
RUN bundle exec rake assets:precompile

# Expose port 3000 to the Docker host, so we can access it from outside
EXPOSE 3000

# Set the command to start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]