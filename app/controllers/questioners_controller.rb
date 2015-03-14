class QuestionersController < ApplicationController
  before_action :set_questioner, only: [:show, :edit, :update, :destroy]

  # GET /questioners
  # GET /questioners.json
  def index
    @questioners = Questioner.all
  end

  # GET /questioners/1
  # GET /questioners/1.json
  def show
  end

  # GET /questioners/new
  def new
    @questioner = Questioner.new
  end

  # GET /questioners/1/edit
  def edit
  end

  # POST /questioners
  # POST /questioners.json
  def create
    @questioner = Questioner.new(questioner_params)

    respond_to do |format|
      if @questioner.save
        format.html { redirect_to @questioner, notice: 'Questioner was successfully created.' }
        format.json { render :show, status: :created, location: @questioner }
      else
        format.html { render :new }
        format.json { render json: @questioner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questioners/1
  # PATCH/PUT /questioners/1.json
  def update
    respond_to do |format|
      if @questioner.update(questioner_params)
        format.html { redirect_to @questioner, notice: 'Questioner was successfully updated.' }
        format.json { render :show, status: :ok, location: @questioner }
      else
        format.html { render :edit }
        format.json { render json: @questioner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questioners/1
  # DELETE /questioners/1.json
  def destroy
    @questioner.destroy
    respond_to do |format|
      format.html { redirect_to questioners_url, notice: 'Questioner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questioner
      @questioner = Questioner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questioner_params
      params.require(:questioner).permit(:name, :description, :is_active)
    end
end
