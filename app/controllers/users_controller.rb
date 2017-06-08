class UsersController < ApplicationController
  def index
      #Dami O -> To show all the users
      @users = User.all

      #Now we need to render, to take it to it's respective template under 'views' folder
      render("users/index.html.erb")

    end

    def show

      @user = User.find(params[:id])

      @photo.user_id = params[:user_id]

      @userphotos = @photo.user_id

      render("users/show.html.erb")

    end
end
