FROM ruby:3.1

WORKDIR /srv/jekyll

COPY Gemfile Gemfile.lock* ./

RUN gem install bundler webrick
RUN bundle install

COPY . .

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
