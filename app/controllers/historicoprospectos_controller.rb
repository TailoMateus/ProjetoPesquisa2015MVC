class HistoricoprospectosController < ApplicationController
  before_action :authenticate_usuario!

  def index
    @historicoprospectos = Historicoprospecto.all
  end

  def new
    @historicoprospecto = Historicoprospecto.new
  end

  def create
    @historicoprospecto = Historicoprospecto.new(user_params)

    if @historicoprospecto.save
      redirect_to new_prospecto_path
    else
      render 'new'  
    end
  end

  private
  
  def user_params
    params.require(:historicoprospecto).permit(:descricao, :situacao_id, :anexo)
  end
end
