class PagesController < ApplicationController
  skip_before_action :show_groupe_nav
  skip_before_action :authenticate_user!, only: [:home]
  def home
  end
end
