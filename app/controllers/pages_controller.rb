class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :information]

  def home
  end

  def information
  end
end
