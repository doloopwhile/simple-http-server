FROM ruby:2.6.5
RUN gem install thin sinatra sinatra-contrib haml
COPY app.rb /
EXPOSE 4567
CMD ["ruby", "/app.rb", "-p", "4567", "-o", "0.0.0.0", "-e", "production"]
