class BienvenidaController < ApplicationController

  #Solo permite el acceso cuando el usuario se halla logueado exitosamente
  before_action :require_login

  def index
  end
end
