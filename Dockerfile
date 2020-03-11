FROM ruby:2.7.0

# Copy application code
COPY . /application
# Change to the application's directory
WORKDIR /application

# Install gems
RUN bundle install

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]