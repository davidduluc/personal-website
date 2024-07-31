# syntax = docker/dockerfile:1

ARG RUBY_VERSION=3.3.4
FROM ruby:$RUBY_VERSION-slim

# Set the build argument for RAILS_MASTER_KEY
ARG RAILS_MASTER_KEY

# Install dependencies
RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    libjemalloc2 && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Install bundler
RUN gem install bundler

# Add Gemfile and install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 4 --retry 3

# Copy the main application
COPY . .

# Set environment variable for Rails master key
# This ensures it is available during the build process if needed
RUN echo $RAILS_MASTER_KEY > /app/config/master.key

# Precompile assets
RUN RAILS_ENV=production bundle exec rails assets:precompile

# Enable jemalloc for reduced memory usage and latency
ENV LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libjemalloc.so.2

# Expose port 3000
EXPOSE 3000

# Set the runtime environment variable for RAILS_MASTER_KEY
# This ensures it is available during runtime
ENV RAILS_MASTER_KEY=${RAILS_MASTER_KEY}

# Configure the main process to run when running the image
CMD ["bash", "-c", "bin/rails db:migrate && bin/rails server -b 0.0.0.0"]
