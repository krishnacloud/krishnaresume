class GrokkingsController < ApplicationController
  before_action :set_grokking, only: [:show, :edit, :update, :destroy]

  # GET /grokkings
  # GET /grokkings.json
  def index
    @grokkings = Grokking.all
  end

  # GET /grokkings/1
  # GET /grokkings/1.json
  def show
  end

  # GET /grokkings/new
  def new
    @grokking = Grokking.new
  end

  # GET /grokkings/1/edit
  def edit
  end

  # POST /grokkings
  # POST /grokkings.json
  def create
    @grokking = Grokking.new(grokking_params)

    respond_to do |format|
      if @grokking.save
        format.html { redirect_to @grokking, notice: 'Grokking was successfully created.' }
        format.json { render :show, status: :created, location: @grokking }
      else
        format.html { render :new }
        format.json { render json: @grokking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grokkings/1
  # PATCH/PUT /grokkings/1.json
  def update
    respond_to do |format|
      if @grokking.update(grokking_params)
        format.html { redirect_to @grokking, notice: 'Grokking was successfully updated.' }
        format.json { render :show, status: :ok, location: @grokking }
      else
        format.html { render :edit }
        format.json { render json: @grokking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grokkings/1
  # DELETE /grokkings/1.json
  def destroy
    @grokking.destroy
    respond_to do |format|
      format.html { redirect_to grokkings_url, notice: 'Grokking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grokking
      @grokking = Grokking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grokking_params
      params.require(:grokking).permit(:topic, :article, :creationdate)
    end
end
