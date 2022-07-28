class Admin::DashboardController < ApplicationController

   #ADMIN AUTHENTICATION
  http_basic_authenticate_with name: ENV["ADMIN_USERNAME"], password: ENV["ADMIN_PASSWORD"]

  def show

    @products = Product.all.order(created_at: :desc)
    @categories = Category.all.order(created_at: :desc)

  end
end
