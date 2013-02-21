class PeopleController < ApplicationController

  before_filter :signed_in_user, only: [:new, :create, :edit, :update, :destroy]
  
  def show
    @person = Person.find(params[:id])
  end

  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person  = Person.new(params[:person])
    if  @person.save
      flash[:success] = "Person added"
      redirect_to @person
    else
      render 'new'
    end
  end

  def edit
    @person = Person.find(params[:id])
  end
  
  def update
       @person  = Person.find(params[:id])
      if  @person.update_attributes(params[:person])
        flash[:success] = "Details edited"
        redirect_to @person
      else
        render 'edit'
      end
    end
    
    def destroy
        Person.find(params[:id]).destroy
        flash[:success] = "Person deleted."
        redirect_to people_url
      end
end
