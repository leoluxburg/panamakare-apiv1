class ExplorersController < ApplicationController
  before_action :set_explorer, only: [:show, :update, :destroy]

  # GET /explorers
  def index
    @explorers = Explorer.all

    render json: @explorers
  end

  # GET /explorers/1
  def show
    render json: @explorer
  end

  # POST /explorers
  def create
    @explorer = Explorer.new(explorer_params)

    if @explorer.save
      render json: @explorer, status: :created, location: @explorer
    else
      render json: @explorer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /explorers/1
  def update
    if @explorer.update(explorer_params)
      render json: @explorer
    else
      render json: @explorer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /explorers/1
  def destroy
    @explorer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_explorer
      @explorer = Explorer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def explorer_params
      params.require(:explorer).permit(:name, :lastname, :email, :phone, :status, :date, :seats, :trip_id)
    end
end
