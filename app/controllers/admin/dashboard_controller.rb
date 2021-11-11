class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["ADMIN_USERNAME"].to_s, password: ENV["ADMIN_PASSWORD"].to_s
  def show
  @categories_count = Category.count
  @products_count = Product.count
end
end
