class UsersController < ApplicationController
  def index
      #Dami O -> To show all the users
      @users = User.all

      #Now we need to render, to take it to it's respective template under 'views' folder
      render("users/index.html.erb")

    end

    def show

      @user = User.find(params[:id])

      render("users/show.html.erb")

      @photo = Photo.find(params[:id])

      render("photos/show.html.erb")

    end
end
