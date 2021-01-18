class GuidesController < ApplicationController
  before_action :set_guide, only: [:show, :update, :destroy]

  # GET /guides
  def index
    @guides = Guide.all

    render json: @guides
  end

  # GET /guides/1
  def show
    render json: @guide
  end

  # POST /guides
  def create
    @guide = Guide.new(guide_params)

    if @guide.save
      render json: @guide, status: :created, location: @guide
    else
      render json: @guide.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /guides/1
  def update
    if @guide.update(guide_params)
      render json: @guide
    else
      render json: @guide.errors, status: :unprocessable_entity
    end
  end

  # DELETE /guides/1
  def destroy
    @guide.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guide
      @guide = Guide.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def guide_params
      params.require(:guide).permit(:name, :age, :spanish, :english, :email, :phone, :status, :date, :seats, :trip_id)
    end
end
