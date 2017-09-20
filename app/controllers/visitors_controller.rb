class VisitorsController < ApplicationController
  def index
    @meta_title = "Bit Parrot"
  end

  def ruby_and_rails
    @meta_title = "Ruby and Rails Developer Info"
  end

  def python
    @meta_title = "Python Developer Info"
  end
end
