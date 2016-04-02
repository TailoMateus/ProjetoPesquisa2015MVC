class ProspectosController < ApplicationController
  before_action :authenticate_usuario!

  respond_to :pdf
  def index
    @prospectos = Prospecto.all
  end

  def show
    @prospecto = Prospecto.find(params[:id])
  end

  def new
    @prospecto = Prospecto.new
  end

  def create
    @prospecto = Prospecto.new(user_params)

    if @prospecto.save
      redirect_to new_prospecto_path, notice: t('notice.created', model:@prospecto.model_name) 
    else
      @prospectos = Prospecto.where(situacao_id: params[:busca].to_i)

      render :pdf => "Prospectos", :template => 'prospectos/index.pdf.erb'
    end
  end

  def edit
    @prospecto = Prospecto.find(params[:id])
  end

  def update
    @prospecto = Prospecto.find(params[:id])

    if @prospecto.update_attributes(user_params)
      redirect_to prospectos_path, notice: t('notice.update', model:@prospecto.model_name) 
    else
      render 'edit'
    end
  end

  def destroy
    @prospecto = Prospecto.find(params[:id])
    @prospecto.destroy
    redirect_to prospectos_path, notice: t('notice.delete', model:@prospecto.model_name) 
  end

  private
  
  def user_params
    params.require(:prospecto).permit(:nome, :empresa, :telefone, :email, :cidade, :estado_id, 
      :social, :situacao_id, :descricao, :anexo)
  end
end
