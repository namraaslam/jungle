class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["ADMIN_USERNAME"], password: ENV["ADMIN_PASSWORD"]
  def show
    @products = Product.all.order(created_at: :desc)
    @category = Category.all()
  end
end
