#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'

  configure do
    set :views, 'views'
  end

  get '/' do
    erb :index
  end

  post '/capture' do
    pokemon_name = params[:pokemon_name]
    redirect("/pokemons/#{pokemon_name}")
  end

  get '/pokemons/:pokemon_name' do
    @pokemon = params[:pokemon_name]
    erb :show
  end
