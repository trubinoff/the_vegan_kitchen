class KeyFoodsController < ApplicationController
  def index
    @key_foods = KeyFood.order(:name).all

    render("key_foods/index.html.erb")
  end

  def show
    @key_food = KeyFood.find(params[:id])

    render("key_foods/show.html.erb")
  end

  def new
    @key_food = KeyFood.new

    render("key_foods/new.html.erb")
  end

  def create
    @key_food = KeyFood.new

    @key_food.name = params[:name]

    save_status = @key_food.save

    if save_status == true
      redirect_to("/key_foods/#{@key_food.id}", :notice => "Key food created successfully.")
    else
      render("key_foods/new.html.erb")
    end
  end

  def edit
    @key_food = KeyFood.find(params[:id])

    render("key_foods/edit.html.erb")
  end

  def update
    @key_food = KeyFood.find(params[:id])

    @key_food.name = params[:name]

    save_status = @key_food.save

    if save_status == true
      redirect_to("/key_foods/#{@key_food.id}", :notice => "Key food updated successfully.")
    else
      render("key_foods/edit.html.erb")
    end
  end

  def destroy
    @key_food = KeyFood.find(params[:id])

    @key_food.destroy

    if URI(request.referer).path == "/key_foods/#{@key_food.id}"
      redirect_to("/", :notice => "Key food deleted.")
    else
      redirect_to(:back, :notice => "Key food deleted.")
    end
  end
end
