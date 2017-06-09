class HomeController < ApplicationController
  def index
    render("home/index.html.erb")
  end

  def show
    render("home/show.html.erb")
  end
end
