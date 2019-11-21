require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  # Reading lines below __END__ (Almost equivalent to DATA.read).
  # DATA.read does not work with sinatra-reloader.
  code = File.readlines(__FILE__).drop_while { |l| l !~ /^__END__$/ }.drop(1).join
  haml code
end

__END__
%html
  %head
    %title Test
    %link{rel: "stylesheet", href: "https://cdnjs.cloudflare.com/ajax/libs/marx/3.0.7/marx.min.css", integrity: "sha256-hPp3aL54H6hqtJdIpwV2551XMfx3e5ZqZDzmTsX0ol0=", crossorigin: "anonymous"}
  %body
    %main
      %h1 Test
      %h2 Host
      %pre= `hostname`
      %h2 Environment variables
      %pre= ENV.map { |k, v| "#{k}=#{v}" }.join("\n")
