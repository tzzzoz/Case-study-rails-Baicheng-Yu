class ProSantesController < ApplicationController
  before_action :set_pro_sante, only: [:show, :edit, :update, :destroy]

  def index
    @pro_santes = ProSante.all
    @json = Adresse.all.to_gmaps4rails
  end


  def show
  end

  def new
    @pro_sante = ProSante.new
    @pro_sante.build_adresse
  end

  def create
    @pro_sante = ProSante.new(pro_sante_params)
    @adresse = Adresse.new(pro_sante_params[:adresse_attributes]) 
    @pro_sante.adresse = @adresse
    


    respond_to do |format|
      if @pro_sante.save
        format.html { redirect_to @pro_sante, notice: 'Pro sante was successfully created.' }
        format.json { render :show, status: :created, location: @pro_sante }
      else
        format.html { render :new }
        format.json { render json: @pro_sante.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pro_sante.destroy
    respond_to do |format|
      format.html { redirect_to pro_santes_url, notice: 'Pro sante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pro_sante
      @pro_sante = ProSante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pro_sante_params
      params.require(:pro_sante).permit(:nom, :prenom, :specialte,
        adresse_attributes: [:name, :latitude, :longitude])
    end
end
