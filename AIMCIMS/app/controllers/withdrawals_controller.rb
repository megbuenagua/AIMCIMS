class WithdrawalsController < ApplicationController
  before_action :set_withdrawal, only: [:show, :edit, :update, :destroy]

  # GET /withdrawals
  # GET /withdrawals.json
  def index
    @withdrawals = Withdrawal.all
  end

  # GET /withdrawals/1
  # GET /withdrawals/1.json
  def show
  @staffname=AdminStaff.find(@withdrawal.staff_id) 
  @memberName = Member.find(@withdrawal.member_id)
  end
  
  def checkbalance
  
  #savings 
   @savings = Saving.find_by_sql("SELECT * FROM savings INNER JOIN members ON  members.id = savings.member_id WHERE member_id =" + @memberSavings.to_s )
   @totalsavings = Saving.where(member_id: @memberSavings).sum("amount")

   #Withdrawals
   @withdrawals = Withdrawal.find_by_sql("SELECT * FROM withdrawals INNER JOIN members ON  members.id = withdrawals.member_id WHERE member_id =" + @memberSavings.to_s )
   @totalwithdraw = Withdrawal.where(member_id: @memberSavings).sum("amount")
   
   #balance computation
   @balance = @totalsavings - @totalwithdraw
   
   return @balance
  end

  # GET /withdrawals/new
  def new
    if params[:member_id].nil?
     @withdrawal = Withdrawal.new
    else
     @withdrawal = Withdrawal.new
      @member =  Member.find(params[:member_id])
    end
  end

  # GET /withdrawals/1/edit
  def edit
  end

  # POST /withdrawals
  # POST /withdrawals.json
  def create
   
    @withdrawal = Withdrawal.new(withdrawal_params)

    respond_to do |format|
      if @withdrawal.save
        format.html { redirect_to @withdrawal, notice: 'Withdrawal was successfully created.' }
        format.json { render :show, status: :created, location: @withdrawal }
      else
        format.html { render :new }
        format.json { render json: @withdrawal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /withdrawals/1
  # PATCH/PUT /withdrawals/1.json
  def update
    respond_to do |format|
      if @withdrawal.update(withdrawal_params)
        format.html { redirect_to @withdrawal, notice: 'Withdrawal was successfully updated.' }
        format.json { render :show, status: :ok, location: @withdrawal }
      else
        format.html { render :edit }
        format.json { render json: @withdrawal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /withdrawals/1
  # DELETE /withdrawals/1.json
  def destroy
    @withdrawal.destroy
    respond_to do |format|
      format.html { redirect_to withdrawals_url, notice: 'Withdrawal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_withdrawal
      @withdrawal = Withdrawal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def withdrawal_params
      params.require(:withdrawal).permit(:member_id, :date_time, :amount, :ornumber, :staff_id)
    end
end
