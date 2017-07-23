class ApplicationController < ActionController::Base
  layout "paginas_externas"

  include Clearance::Controller
  
  protect_from_forgery with: :exception
end
