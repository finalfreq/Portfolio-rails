class AboutController < ApplicationController
  def index
    @admin = User.where('admin', true).first
  end
end
