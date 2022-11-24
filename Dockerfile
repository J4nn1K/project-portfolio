FROM ruby:3.1.2-alpine
RUN apk add \
  build-base \
  postgresql-dev \
  tzdata \
  nodejs

WORKDIR /app

ENV RAILS_ENV=production
ENV RAILS_SERVE_STATIC_FILES=true
ENV RAILS_MASTER_KEY=${RAILS_MASTER_KEY}
# ENV DATABASE_URL=${DATABASE_URL}

COPY Gemfile* .
RUN bundle install

COPY . .
RUN rails assets:clean assets:precompile

EXPOSE 3000
CMD ["/usr/bin/bash"]