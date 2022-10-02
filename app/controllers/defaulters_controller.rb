class DefaultersController < ApplicationController
  before_action :set_defaulter, only: %i[ show update destroy ]

  # GET /defaulters
  def index
    @defaulters = Defaulter.all

    render json: @defaulters
  end

  # GET /defaulters/1
  def show
    render json: @defaulter
  end

  # POST /defaulters
  def create
    @defaulter = Defaulter.new(defaulter_params)

    if @defaulter.save
      render json: @defaulter, status: :created, location: @defaulter
    else
      render json: @defaulter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /defaulters/1
  def update
    if @defaulter.update(defaulter_params)
      render json: @defaulter
    else
      render json: @defaulter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /defaulters/1
  def destroy
    @defaulter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defaulter
      @defaulter = Defaulter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def defaulter_params
      params.require(:defaulter).permit(:name, :amount)
    end
end
