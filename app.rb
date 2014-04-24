require 'sinatra'
require 'sinatra/activerecord'


set :database, "sqlite3:///sinatra_university.db"


get '/' do
  erb :index
end

get '/search' do
  erb :search
end

############## Professors ###############

get '/professors' do
  @professors = Professor.all
  erb :"professors/index"
end

get '/professors/new' do
  erb :"professors/new"
end

get '/professors/:id' do
  @professor = Professor.find(params[:id])
  erb :"professors/show"
end

get '/professors/:id/edit' do
  @professor = Professor.find(params[:id])
  erb :"professors/edit"
end


# create
post "/professors" do
  professor = Professor.new(params[:professor])
  if professor.save
    redirect '/professors'
  else
    redirect '/error'
  end
end



# update
put "/professors/:id" do
  professor_params = params[:professor]
  laundered_params = Helper.launder_params(professor_params)
  if professor_params.length == 0
    redirect '/error'
  else
    professor = Professor.find(params[:id])
    if professor.update(laundered_params)
      redirect "/professors/#{params[:id]}"
    else
      redirect "/"
    end
  end
end


# delete
delete "/professors/:id" do
  professor = Professor.find(params[:id])
  if professor.delete
    redirect "/professors"
  else
    redirect "/professors/#{params[:id]}"
  end
end

get "/error" do
  "You can't just submit a bunch of blanks."
end

############## Courses ###############

get '/courses' do
  @courses = Course.all
  erb :"courses/index"
end

get '/courses/new' do
  @professors = Professor.all
  @buildings = Building.all
  erb :"courses/new"
end

get '/courses/:id' do
  @course = Course.find(params[:id])
  erb :"courses/show"
end

get '/courses/:id/edit' do
  @course = Course.find(params[:id])
  @professors = Professor.all
  @buildings = Building.all
  erb :"courses/edit"
end


# create
post "/courses" do
  puts params
  course = Course.new(params[:course])
  if course.save
    redirect '/courses'
  else
    redirect '/error'
  end
end



# update
put "/courses/:id" do
  course_params = params[:course]
  laundered_params = Helper.launder_params(course_params)
  if course_params.length == 0
    redirect '/error'
  else
    course = Course.find(params[:id])
    if course.update(laundered_params)
      redirect "/courses/#{params[:id]}"
    else
      redirect "/"
    end
  end
end

# delete
delete "/courses/:id" do
  course = Course.find(params[:id])
  if course.delete
    redirect "/courses"
  else
    redirect "/courses/#{params[:id]}"
  end
end

get "/error" do
  "You can't just submit a bunch of blanks."
end

############## Buildings ###############

get '/buildings' do
  @buildings = Building.all
  erb :"buildings/index"
end

get '/buildings/new' do
  erb :"buildings/new"
end

get '/buildings/:id' do
  @building = Building.find(params[:id])
  erb :"buildings/show"
end

get '/buildings/:id/edit' do
  @building = Building.find(params[:id])
  erb :"buildings/edit"
end


post "/buildings" do
  building = Building.new(params[:building])
  if building.save
    redirect '/buildings'
  else
    redirect '/error'
  end
end



# update
put "/buildings/:id" do
  building_params = params[:building]
  laundered_params = Helper.launder_params(building_params)
  if building_params.length == 0
    redirect '/error'
  else
    building = Building.find(params[:id])
    if building.update(laundered_params)
      redirect "/buildings/#{params[:id]}"
    else
      redirect "/"
    end
  end
end

# delete
delete "/buildings/:id" do
  building = Building.find(params[:id])
  if building.delete
    redirect "/buildings"
  else
    redirect "/buildings/#{params[:id]}"
  end
end

get "/error" do
  "There was a problem."
end


#############################
      # End of Routes #
#############################


class Professor < ActiveRecord::Base
  belongs_to :course
end

class Course < ActiveRecord::Base
  belongs_to :professor
  belongs_to :building
end

class Building < ActiveRecord::Base
  belongs_to :course
end

module Helper
  def self.launder_params(params)
    params.select { |k, v| v != '' }
  end

  def self.check_url(address)
    address =~ URI::regexp(["ftp", "http", "https"])
  end
end