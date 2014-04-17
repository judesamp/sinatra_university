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
  erb :"professors/index"
end

get '/professors/new' do
  erb :"professors/new"
end

get '/courses' do
  erb :"courses/index"
end

get '/courses/new' do
  erb :"courses/new"
end

get '/subjects' do
  erb :"subjects/index"
end

get '/subjects/new' do
  erb :"subjects/new"
end

class Professor < ActiveRecord::Base
end

class Course < ActiveRecord::Base
end

class Subject < ActiveRecord::Base
end