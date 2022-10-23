require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry-byebug'
require 'better_errors'
require_relative 'repository'
require_relative 'task'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path(__dir__)
end

csv_file_path = File.join(__dir__, 'tasks.csv')
repository = Repository.new(csv_file_path)

get '/' do
  @tasks = repository.all
  erb :index
end

get '/new' do
  erb :new
end

post '/create' do
  description = params['description']
  task = Task.new(description)
  repository.add(task)
  redirect '/'
end

post '/completed/:id' do
  index = params[:id].to_i
  repository.mark_as_done(index)
  redirect '/'
end
