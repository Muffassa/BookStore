class StaticPagesController < ApplicationController
  before_action :current_user
  def index
    @products = Product.all
  end
end
