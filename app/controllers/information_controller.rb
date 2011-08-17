class InformationController < ApplicationController
  skip_before_filter :authorize
  def index
    @messages=Message.all
  end

end