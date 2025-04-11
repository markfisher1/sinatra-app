FROM ruby:3.2

WORKDIR /app

# Only copy dependency files first to leverage Docker layer cache
COPY Gemfile Gemfile.lock ./

# Install only production dependencies
RUN bundle install --without development test

# Then copy the rest of the app
COPY . .

# Environment and Port setup
ENV PORT=4567
EXPOSE 4567

# Add random startup time to simulate delayed service
CMD bash -c "sleep $((RANDOM % 10 + 1)) && ruby app.rb -o 0.0.0.0"
