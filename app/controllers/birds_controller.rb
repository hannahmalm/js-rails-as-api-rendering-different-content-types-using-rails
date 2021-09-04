class BirdsController < ApplicationController
  def index
    birds = Bird.all
    #render 'birds/index.html.erb'
    #to render plain text from a Rails controller, you specify plain:, followed by the text you want to display
    #render plain: "Hello #{@birds[3].name}"
    #render json: 'Remember that JOSN is just object notation converted to string data, so strings work here '
    #render json: { message: 'Hashes of data will get converted to JSON' }
    #render json: ['As', 'well', 'as', 'arrays']
    #we already have a collection of data, @birds
    #no longer need instance variables
    render json: birds
  end
end

#to confim that plain is working, we need a frontend to send a request to our Rails app - HTML file
