class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
    else
      render :new
    end


    redirect_to author_path(@author)
  end

  def edit

  end

  def update
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
