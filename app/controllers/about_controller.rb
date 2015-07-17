class AboutController < ApplicationController
  def index
    @categories = Category.all
    @references = Reference.all
    @reference = Reference.new
  end
end
