class SetaController < ApplicationController
  before_action :set_setum, only: [:show, :edit, :update, :destroy]

  # GET /seta
  # GET /seta.json
  def index
    @seta = Setum.all
  end

  # GET /seta/1
  # GET /seta/1.json
  def show
  end

  # GET /seta/new
  def new
    @setum = Setum.new
  end

  # GET /seta/1/edit
  def edit
  end

  # POST /seta
  # POST /seta.json
  def create
    @setum = Setum.new(setum_params)

    respond_to do |format|
      if @setum.save
        format.html { redirect_to @setum, notice: 'Setum was successfully created.' }
        format.json { render :show, status: :created, location: @setum }
      else
        format.html { render :new }
        format.json { render json: @setum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seta/1
  # PATCH/PUT /seta/1.json
  def update
    respond_to do |format|
      if @setum.update(setum_params)
        format.html { redirect_to @setum, notice: 'Setum was successfully updated.' }
        format.json { render :show, status: :ok, location: @setum }
      else
        format.html { render :edit }
        format.json { render json: @setum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seta/1
  # DELETE /seta/1.json
  def destroy
    @setum.destroy
    respond_to do |format|
      format.html { redirect_to seta_url, notice: 'Setum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setum
      @setum = Setum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def setum_params
      params.require(:setum).permit(:name, :time_limit, :description, :is_active, :display_order)
    end
end
