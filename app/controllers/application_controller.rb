class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def application_view_model
  	@application_view_model ||= ApplicationViewModel.new
  end
  helper_method :application_view_model
end
