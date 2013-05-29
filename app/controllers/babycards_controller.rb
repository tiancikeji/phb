class BabycardsController < ApplicationController
  # GET /babycards
  # GET /babycards.json
  def index
    @babycards = Babycard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @babycards }
    end
  end

  # GET /babycards/1
  # GET /babycards/1.json
  def show
    @babycard = Babycard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @babycard }
    end
  end

  # GET /babycards/new
  # GET /babycards/new.json
  def new
    @babycard = Babycard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @babycard }
    end
  end

  # GET /babycards/1/edit
  def edit
    @babycard = Babycard.find(params[:id])
  end

  # POST /babycards
  # POST /babycards.json
  def create
    @babycard = Babycard.new(params[:babycard])

    respond_to do |format|
      if @babycard.save
        format.html { redirect_to @babycard, notice: 'Babycard was successfully created.' }
        format.json { render json: @babycard, status: :created, location: @babycard }
      else
        format.html { render action: "new" }
        format.json { render json: @babycard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /babycards/1
  # PUT /babycards/1.json
  def update
    @babycard = Babycard.find(params[:id])

    respond_to do |format|
      if @babycard.update_attributes(params[:babycard])
        format.html { redirect_to @babycard, notice: 'Babycard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @babycard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /babycards/1
  # DELETE /babycards/1.json
  def destroy
    @babycard = Babycard.find(params[:id])
    @babycard.destroy

    respond_to do |format|
      format.html { redirect_to babycards_url }
      format.json { head :no_content }
    end
  end
end
