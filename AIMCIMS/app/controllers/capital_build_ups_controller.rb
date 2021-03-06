class CapitalBuildUpsController < ApplicationController
  before_action :set_capital_build_up, only: [:show, :edit, :update, :destroy]

  # GET /capital_build_ups
  # GET /capital_build_ups.json
  def index
    if params[:q].nil?
      @member = Member.all
    else
      if params[:r] == "lastname"
        @member = Member.where( "lower(lastname) like ?", "%"+ params[:q].downcase + "%")
      else
        @member = Member.where( "member_number like ?", "%"+ params[:q] + "%" )
      end
    end
  end

  def search
    redirect_to :controller => 'capital_build_ups', :action => 'index', :q => params[:q], :r => params[:r]
  end

  def member
    @memberName = Member.find(params[:member_id])
    @cbu = CapitalBuildUp.where( "member_id = ?", params[:member_id] )
    render :template => 'capital_build_ups/member_cbu'
  end
  
  def payment
   @payment = CbuContribution.where( "cbu_id = ?", params[:cbu_id] )
   render :template => 'capital_build_ups/payment_cbu'
  end
  # GET /capital_build_ups/1
  # GET /capital_build_ups/1.json
  def show
    @memberName = Member.find(@capital_build_up.member_id)
  end

  # GET /capital_build_ups/new
  def new
    if params[:member_id].nil?
      @capital_build_up = CapitalBuildUp.new
    else
      @capital_build_up = CapitalBuildUp.new
      @member =  Member.find(params[:member_id])
    end
  end

  # GET /capital_build_ups/1/edit
  def edit
  end

  # POST /capital_build_ups
  # POST /capital_build_ups.json
  def create
    @capital_build_up = CapitalBuildUp.new(capital_build_up_params)

    respond_to do |format|
      if @capital_build_up.save
        format.html { redirect_to @capital_build_up, notice: 'Capital build up was successfully created.' }
        format.json { render :show, status: :created, location: @capital_build_up }
      else
        format.html { render :new }
        format.json { render json: @capital_build_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capital_build_ups/1
  # PATCH/PUT /capital_build_ups/1.json
  def update
    respond_to do |format|
      if @capital_build_up.update(capital_build_up_params)
        format.html { redirect_to @capital_build_up, notice: 'Capital build up was successfully updated.' }
        format.json { render :show, status: :ok, location: @capital_build_up }
      else
        format.html { render :edit }
        format.json { render json: @capital_build_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capital_build_ups/1
  # DELETE /capital_build_ups/1.json
  def destroy
    @capital_build_up.destroy
    respond_to do |format|
      format.html { redirect_to capital_build_ups_url, notice: 'Capital build up was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capital_build_up
      @capital_build_up = CapitalBuildUp.find(params[:id])
    end
 

    # Never trust parameters from the scary internet, only allow the white list through.
    def capital_build_up_params
      params.require(:capital_build_up).permit(:member_id, :membership_type, :member_since, :subscribed_shares, :total_amount_shares, :amount_per_shares, :initial_payment, :total_paid_amount, :paid_shares_percentage, :terms_of_payment, :status, :remarks)
    end
end
