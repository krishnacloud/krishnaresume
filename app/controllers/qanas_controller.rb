class QanasController < ApplicationController
  before_action :set_qana, only: [:show, :edit, :update, :destroy]

  # GET /qanas
  # GET /qanas.json
  def index
    @qanas = Qana.all
  end

  # GET /qanas/1
  # GET /qanas/1.json
  def show
  end

  # GET /qanas/new
  def new
    @qana = Qana.new
  end

  # GET /qanas/1/edit
  def edit
  end

  # POST /qanas
  # POST /qanas.json
  def create
    @qana = Qana.new(qana_params)

    respond_to do |format|
      if @qana.save
        format.html { redirect_to @qana, notice: 'Qana was successfully created.' }
        format.json { render :show, status: :created, location: @qana }
      else
        format.html { render :new }
        format.json { render json: @qana.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qanas/1
  # PATCH/PUT /qanas/1.json
  def update
    respond_to do |format|
      if @qana.update(qana_params)
        format.html { redirect_to @qana, notice: 'Qana was successfully updated.' }
        format.json { render :show, status: :ok, location: @qana }
      else
        format.html { render :edit }
        format.json { render json: @qana.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qanas/1
  # DELETE /qanas/1.json
  def destroy
    @qana.destroy
    respond_to do |format|
      format.html { redirect_to qanas_url, notice: 'Qana was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qana
      @qana = Qana.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def qana_params
      params.require(:qana).permit(:topic, :question, :answer, :createddate, :version)
    end
end
