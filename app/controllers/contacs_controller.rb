class ContacsController < ApplicationController
  before_action :set_contac, only: [:show, :edit, :update, :destroy]

  # GET /contacs
  # GET /contacs.json
  def index
    @contacs = Contac.all
  end

  # GET /contacs/1
  # GET /contacs/1.json
  def show
  end

  # GET /contacs/new
  def new
    @contac = Contac.new
  end

  # GET /contacs/1/edit
  def edit
  end

  # POST /contacs
  # POST /contacs.json
  def create
    @contac = Contac.new(contac_params)

    respond_to do |format|
      if @contac.save
        format.html { redirect_to @contac, notice: 'Contac was successfully created.' }
        format.json { render :show, status: :created, location: @contac }
      else
        format.html { render :new }
        format.json { render json: @contac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacs/1
  # PATCH/PUT /contacs/1.json
  def update
    respond_to do |format|
      if @contac.update(contac_params)
        format.html { redirect_to @contac, notice: 'Contac was successfully updated.' }
        format.json { render :show, status: :ok, location: @contac }
      else
        format.html { render :edit }
        format.json { render json: @contac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacs/1
  # DELETE /contacs/1.json
  def destroy
    @contac.destroy
    respond_to do |format|
      format.html { redirect_to contacs_url, notice: 'Contac was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contac
      @contac = Contac.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contac_params
      params.require(:contac).permit(:name, :lastname, :phone, :email, :description, :birthdate, :user_id)
    end
end
