# Single-file dummy web server

A simple web server which just renders list of environment variables.
Implemented with one file. Please modify freely.

## How to launch web server

```
gem install thin sinatra sinatra-contrib haml
ruby app.rb
```

Then, visit localhost:4567! (ﾟ∀ﾟ)=3

## How to build docker image

```
docker build . -t sample-http-server
docker run -p 4567:4567 sample-http-server
```
