class AboutController < ApplicationController
  def index
    @projects = Project.last(4)
    @references = Reference.all
    @reference = Reference.new
  end
end
