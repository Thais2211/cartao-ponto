class ApplicationController < ActionController::Base

  def current_empresa
    @current_empresa ||= Empresa.where(user_id: current_user.id, em_uso: true).first
  end
end
