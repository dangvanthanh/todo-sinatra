require 'sinatra'
require File.expand_path('../models/todo.rb', __FILE__)

get '/' do
	@todos = Todo.all.order(id: :desc)
	erb :index
end

get '/new' do
	erb :new
end	

post '/new' do
	Todo.create(:content => params[:content], :created => Time.now)
	redirect '/'
end

get '/edit/:id' do
	@todo = Todo.find(params[:id])
	erb :edit
end	

put '/edit/:id' do
	todo = Todo.find(params[:id])
	todo.content = params[:content]
	todo.done = todo.done ? 0 : 1
	todo.save
	redirect '/'
end

get '/delete/:id' do
	@todo = Todo.find(params[:id])
	erb :delete
end

delete '/delete/:id' do
	todo = Todo.find(params[:id])
	todo.destroy
	redirect '/'
end

get '/done/:id' do
	todo = Todo.find(params[:id])
	todo.done = todo.done ? 0 : 1
	todo.save
	redirect '/'
end

not_found do
	status 404
	erb :'404'
end