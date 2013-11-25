class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

class ApplicationController < ActionController::Base
  protect_from_forgery
 
  private
 
  def autenticacao
    authenticate_or_request_with_http_basic do |usuario, senha|
      usuario == 'admin' && senha == 'abracadabra'
    end
  end
 
end
