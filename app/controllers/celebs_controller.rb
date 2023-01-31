class CelebsController < ApplicationController
  before_action :set_celeb, only: %i[ show edit update destroy ]

  # GET /celebs or /celebs.json
  def index
    @game = Game.find(params[:game_id])
  end

  # GET /celebs/1 or /celebs/1.json
  def show
  end

  # GET /celebs/new
  def new
    @celeb = Celeb.new
  end

  # GET /celebs/1/edit
  def edit
  end

  # POST /celebs or /celebs.json
  def create
    @celeb = Celeb.new(celeb_params)

    respond_to do |format|
      if @celeb.save
        format.html { redirect_to celeb_url(@celeb), notice: "Celeb was successfully created." }
        format.json { render :show, status: :created, location: @celeb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @celeb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /celebs/1 or /celebs/1.json
  def update
    respond_to do |format|
      if @celeb.update(celeb_params)
        format.html { redirect_to celeb_url(@celeb), notice: "Celeb was successfully updated." }
        format.json { render :show, status: :ok, location: @celeb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @celeb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celebs/1 or /celebs/1.json
  def destroy
    @celeb.destroy

    respond_to do |format|
      format.html { redirect_to celebs_url, notice: "Celeb was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celeb
      @celeb = Celeb.find(params[:celeb_id])
    end

    # Only allow a list of trusted parameters through.
    def celeb_params
      params.require(:celeb).permit(:name, :game_id)
    end
end
