class KlassesController < ApplicationController
  before_action :set_klass, only: [:show, :edit, :update, :destroy]

  # GET /klasses
  # GET /klasses.json
  def index
    @klasses = Klass.all
    @klass = Klass.find(1)

    @hash = Gmaps4rails.build_markers(@klasses) do |klass, marker|
      marker.lat klass.latitude
      marker.lng klass.longitude
      marker.infowindow klass.description
      marker.picture( {
        "url" => "https://s3-eu-west-1.amazonaws.com/roshi.app/Global_Pictures/Roshi_Hippo.png", 
        "width" => 28,
        "height" => 37
        })
      marker.json({ title: klass.title})
    end

  end

  # GET /klasses/1
  # GET /klasses/1.json
  def show

  end

  # GET /klasses/new
  def new
    @klass = Klass.new
  end

  # GET /klasses/1/edit
  def edit
  end

  # POST /klasses
  # POST /klasses.json
  def create
    @klass = Klass.new(klass_params)

    respond_to do |format|
      if @klass.save
        format.html { redirect_to @klass, notice: 'Klass was successfully created.' }
        format.json { render :show, status: :created, location: @klass }
      else
        format.html { render :new }
        format.json { render json: @klass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /klasses/1
  # PATCH/PUT /klasses/1.json
  def update
    respond_to do |format|
      if @klass.update(klass_params)
        format.html { redirect_to @klass, notice: 'Klass was successfully updated.' }
        format.json { render :show, status: :ok, location: @klass }
      else
        format.html { render :edit }
        format.json { render json: @klass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /klasses/1
  # DELETE /klasses/1.json
  def destroy
    @klass.destroy
    respond_to do |format|
      format.html { redirect_to klasses_url, notice: 'Klass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_klass
      @klass = Klass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def klass_params
      params.require(:klass).permit(:title, :teacher, :description, :date, :time, :place, :price, :address, :latitude, :longitude)
    end
end
