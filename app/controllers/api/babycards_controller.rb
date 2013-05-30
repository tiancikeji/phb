class Api::BabycardsController < ApplicationController
  # GET /babycards
  # GET /babycards.json
  def index
    @babycards = Babycard.all
    render json: @babycards
  end

  def show
    @babycard = Babycard.find(params[:id])
    render json: @babycard
  end

  def create
    @babycard = Babycard.new(params[:babycard])
      if @babycard.save
        render :json => {success=>true,:babycard =>  @babycard}
      else
        render json: @babycard.errors, status: :unprocessable_entity 
      end
  end

  def update
    @babycard = Babycard.find(params[:id])
      if @babycard.update_attributes(params[:babycard])
        render json: @babycard
      else
        render json: @babycard.errors, status: :unprocessable_entity
      end
  end

  def destroy
    @babycard = Babycard.find(params[:id])
    @babycard.destroy
    render json: "ok"
  end
end
