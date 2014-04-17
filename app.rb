require 'sinatra'
require 'sinatra/activerecord'


set :database, "sqlite3:///sinatra_university.db"



get '/' do
  erb :index
end

get '/search' do
  erb :search
end

get '/professors' do
  erb ":professors/index"
end

get '/courses' do
  erb ":courses/index"
end

get '/subjects' do
  erb ":subjects/index"
end