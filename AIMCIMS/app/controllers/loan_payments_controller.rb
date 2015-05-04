class LoanPaymentsController < ApplicationController
  before_action :set_loan_payment, only: [:show, :edit, :update, :destroy]

  # GET /loan_payments
  # GET /loan_payments.json
  def index
    @loan_payments = LoanPayment.all
  end

  # GET /loan_payments/1
  # GET /loan_payments/1.json
  def show
  end

  # GET /loan_payments/new
  def new  
    if params[:loan_id].nil?
      @loan_payment = LoanPayment.new
    else
      @loan_payment = LoanPayment.new
      @loan_application =  LoanApplication.find(params[:loan_id])
    end
  end

  # GET /loan_payments/1/edit
  def edit
  end

  # POST /loan_payments
  # POST /loan_payments.json
  def create
    @loan_payment = LoanPayment.new(loan_payment_params)

    respond_to do |format|
      if @loan_payment.save
        format.html { redirect_to @loan_payment, notice: 'Loan payment was successfully created.' }
        format.json { render :show, status: :created, location: @loan_payment }
      else
        format.html { render :new }
        format.json { render json: @loan_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loan_payments/1
  # PATCH/PUT /loan_payments/1.json
  def update
    respond_to do |format|
      if @loan_payment.update(loan_payment_params)
        format.html { redirect_to @loan_payment, notice: 'Loan payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @loan_payment }
      else
        format.html { render :edit }
        format.json { render json: @loan_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loan_payments/1
  # DELETE /loan_payments/1.json
  def destroy
    @loan_payment.destroy
    respond_to do |format|
      format.html { redirect_to loan_payments_url, notice: 'Loan payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_payment
      @loan_payment = LoanPayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loan_payment_params
      params.require(:loan_payment).permit(:loan_id, :payment_date, :amount, :ornumber, :staff_id, :remarks)
    end
  end

