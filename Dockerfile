# syntax = docker/dockerfile:1

ARG RUBY_VERSION=3.3.4
FROM ruby:$RUBY_VERSION-slim

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

# Precompile assets
RUN SECRET_KEY_BASE=$RAILS_MASTER_KEY RAILS_ENV=production bundle exec rails assets:precompile

# Enable jemalloc for reduced memory usage and latency
ENV LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libjemalloc.so.2

# Expose port 3000
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["bash", "-c", "bin/rails db:migrate && bin/rails server -b 0.0.0.0"]
