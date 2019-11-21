FROM ruby:2.6.5
RUN gem install thin sinatra sinatra-contrib haml
COPY app.rb /
EXPOSE 80
CMD ["ruby", "/app.rb", "-p", "80", "-o", "0.0.0.0", "-e", "production"]
