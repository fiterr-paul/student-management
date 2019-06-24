require 'sinatra'
require 'httparty'
require 'json'
require 'sinatra/reloader'

students = [
  {
    id: 1,
    name: "Paul Meier",
    email: "gentech1@coder.com",
    lightning_talk: false
  },
  {
    id: 2,
    name: "Mel McAdam",
    email: "gentech2@coder.com",
    lightning_talk: false
  }
]

get '/' do
  erb(:index)
end

get '/students' do
  @students = students
  erb(:students)
end

get '/add_student' do 
  @students = students 
  erb(:add_student)
end
