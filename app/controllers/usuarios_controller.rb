#encoding: utf-8
class UsuariosController < InheritedResources::Base
  def index
    @usuarios = Usuario.paginate(:page => params[:page], :per_page => 10)
  end
end
