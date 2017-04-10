class VisitorsController < ApplicationController
  def index
    @meta_title = "Bit Parrot"
  end

  def stocks
    @meta_title = "Track Stocks"
  end
end
