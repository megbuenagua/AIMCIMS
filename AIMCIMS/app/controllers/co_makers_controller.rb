class CoMakersController < ApplicationController
  before_action :set_co_maker, only: [:show, :edit, :update, :destroy]

  # GET /co_makers
  # GET /co_makers.json
  def index
    @cmcount=LoanApplication.group(:comaker1).count
    
    if params[:q].nil?
     @co_makers = CoMaker.all.order('comakerlname ASC')
    else
      if params[:r] == "lastname"
        @co_makers = CoMaker.where( "lower(comakerlname) like ?", "%"+ params[:q].downcase + "%")
      else
        @co_makers = CoMaker.where( "comaker_number like ?", "%"+ params[:q] + "%" )
      end    
    end
  end
  
  def search
    
    redirect_to :controller => 'co_makers', :action => 'index', :r => params[:r], :q => params[:q]
  end

  # GET /co_makers/1
  # GET /co_makers/1.json
  def show
  @cm = @co_maker.id  
  
  @cmcount1=LoanApplication.where(comaker1: params[:id]).count
  @cmcount2=LoanApplication.where(comaker2: params[:id]).count
  @cmcount = @cmcount1 + @cmcount2

  end

  # GET /co_makers/new
  def new
    @co_maker = CoMaker.new
  end

  # GET /co_makers/1/edit
  def edit
  end

  # POST /co_makers
  # POST /co_makers.json
  def create
    @co_maker = CoMaker.new(co_maker_params)

    respond_to do |format|
      if @co_maker.save
      _date = DateTime.now.strftime('%Y%m%d%H%M')
       @co_maker.comaker_number = "3" + _date
       @co_maker.save
        format.html { redirect_to @co_maker, notice: 'Co maker was successfully created.' }
        format.json { render :show, status: :created, location: @co_maker }
      else
        format.html { render :new }
        format.json { render json: @co_maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /co_makers/1
  # PATCH/PUT /co_makers/1.json
  def update
    respond_to do |format|
      if @co_maker.update(co_maker_params)
        format.html { redirect_to @co_maker, notice: 'Co maker was successfully updated.' }
        format.json { render :show, status: :ok, location: @co_maker }
      else
        format.html { render :edit }
        format.json { render json: @co_maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /co_makers/1
  # DELETE /co_makers/1.json
  def destroy
    @co_maker.destroy
    respond_to do |format|
      format.html { redirect_to co_makers_url, notice: 'Co maker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_co_maker
      @co_maker = CoMaker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def co_maker_params
      params.require(:co_maker).permit(:comaker_number, :comakerfname, :comakermname, :comakerlname, 
      :birthdate, :address, :spouse, :contact_number, :employer, :employer_address, :employer_contact_number)
    end
end
