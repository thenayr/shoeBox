class ShoesController < ApplicationController
  # GET /shoes
  # GET /shoes.json
  def index
    @shoes = Shoe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shoes }
    end
  end

  # POST /shoes
  # POST /shoes.json
  def create
    @shoe = Shoe.new(params[:shoe])

    respond_to do |format|
      if @shoe.save
        format.html { redirect_to @shoe, notice: 'Shoe was successfully created.' }
        format.json { render json: @shoe, status: :created, location: @shoe }
      else
        format.html { render action: "new" }
        format.json { render json: @shoe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoes/1
  # DELETE /shoes/1.json
  def destroy
    @shoe = Shoe.find(params[:id])
    @shoe.destroy

    respond_to do |format|
      format.html { redirect_to shoes_url }
      format.json { head :ok }
    end
  end
end
