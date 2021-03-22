class YeetsController < ApplicationController
  before_action :set_yeet, only: %i[ show edit update destroy ]

  # GET /yeets or /yeets.json
  def index
    @yeets = Yeet.all
  end

  # GET /yeets/1 or /yeets/1.json
  def show
  end

  # GET /yeets/new
  def new
    @yeet = Yeet.new
  end

  # GET /yeets/1/edit
  def edit
  end

  # POST /yeets or /yeets.json
  def create
    @yeet = Yeet.new(yeet_params)

    respond_to do |format|
      if @yeet.save
        format.html { redirect_to @yeet, notice: "Yeet was successfully created." }
        format.json { render :show, status: :created, location: @yeet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @yeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yeets/1 or /yeets/1.json
  def update
    respond_to do |format|
      if @yeet.update(yeet_params)
        format.html { redirect_to @yeet, notice: "Yeet was successfully updated." }
        format.json { render :show, status: :ok, location: @yeet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @yeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yeets/1 or /yeets/1.json
  def destroy
    @yeet.destroy
    respond_to do |format|
      format.html { redirect_to yeets_url, notice: "Yeet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yeet
      @yeet = Yeet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def yeet_params
      params.require(:yeet).permit(:yeet)
    end
end
