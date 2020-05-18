class ApplicationController < ActionController::Base
  include Pundit

  before_action :set_paper_trail_whodunnit

  #  protect_from_forgery with: :exception
  #  before_action :authenticate_user!, unless: :devise_controller?

  #  after_action :verify_authorized, unless: :devise_controller?
  #  after_action :verify_policy_scoped, only: :index, unless: :devise_controller?
end
