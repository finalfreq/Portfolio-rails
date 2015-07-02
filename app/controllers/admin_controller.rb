class AdminController < ApplicationController

  def index
    @admin = Admin.first
  end

end
