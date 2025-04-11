FROM ruby:3.0

WORKDIR /app

# Copy only Gemfile files to cache dependencies.
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the remaining application code.
COPY . .

ENV PORT=4568
EXPOSE 8080
CMD ["ruby", "app.rb"]
