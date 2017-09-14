require 'sinatra'
require 'sinatra/reloader' if development?

enable :sessions

get '/' do
  422
end

error 422 do
  "You have an error!"
end

get '/title' do
  "Programming for Online Prototypes"
end

get '/name' do
  redirect to('/title')
end

get '/catalog_description' do
  "An introduction to rapidly prototyping web-based products and services. This 7-week experience will teach students the basics of web development for online services. Specifically, well focus on lightweight, minimal UI, microservices (e.g. bots, conversational interfaces, platform integrations, designing micro-interactions, etc.) Well introduce and examine these new web service trends and interactive experiences. Students will learn through instructor led workshops and hands-on experimentation. As an intro level course, no knowledge of programming is needed. By the end of the course, students will be able to design, prototype and deploy their own web-delivered services."
end

get '/units' do
  "6"
end

get '/instructor' do
  "Daragh J Byrne <br> daragh@daraghbyrne.me <br> slack id: @daragh"
end

get '/links/:item' do
  if params[:item] == "class"
    "Tuesday 3:00pm - 5:00pm <br> Thursday 3:00pm - 5:00pm"
  elsif params[:item] == "officehours"
    "Friday 5:00pm - 6:50pm"
  end
end
