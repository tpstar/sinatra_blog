#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'




  configure do
    set :views, 'views'
  end

  get '/pokemons/:name' do
    @pokemon = params[:name]
    erb :show_pokemon
  end
