class CabsController < ApplicationController
  # GET /cabs
  # GET /cabs.json
  def index
    @cabs = Cab.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cabs }
    end
  end

  # GET /cabs/1
  # GET /cabs/1.json
  def show
    @cab = Cab.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cab }
    end
  end

  # GET /cabs/new
  # GET /cabs/new.json
  def new
    @cab = Cab.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cab }
    end
  end

  # GET /cabs/1/edit
  def edit
    @cab = Cab.find(params[:id])
  end

  # POST /cabs
  # POST /cabs.json
  def create
    @cab = Cab.new(params[:cab])

    respond_to do |format|
      if @cab.save
        format.html { redirect_to @cab, notice: 'Cab was successfully created.' }
        format.json { render json: @cab, status: :created, location: @cab }
      else
        format.html { render action: "new" }
        format.json { render json: @cab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cabs/1
  # PUT /cabs/1.json
  def update
    @cab = Cab.find(params[:id])

    respond_to do |format|
      if @cab.update_attributes(params[:cab])
        format.html { redirect_to @cab, notice: 'Cab was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cabs/1
  # DELETE /cabs/1.json
  def destroy
    @cab = Cab.find(params[:id])
    @cab.destroy

    respond_to do |format|
      format.html { redirect_to cabs_url }
      format.json { head :no_content }
    end
  end
end
