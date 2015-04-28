class LoanApplicationsController < ApplicationController
  before_action :set_loan_application, only: [:show, :edit, :update, :destroy]

  # GET /loan_applications
  # GET /loan_applications.json
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
    #@loan_stat = LoanApplication.find_by application_status: params[:l]
    redirect_to :controller => 'loan_applications', :action => 'index', :q => params[:q], :r => params[:r]
  end

  def member
    @loan = LoanApplication.where( "member_id = ?", params[:member_id] )
    #@membername = Member.
    render :template => 'loan_applications/member_loans'
  end
  
  def payment
    @payment = LoanPayment.where( "loan_id = ?", params[:loan_id] )
     render :template => 'loan_applications/list_payment'
  end
  
  def compute
  end
    
  # GET /loan_applications/1
  # GET /loan_applications/1.json
  def show
  
  @loan_type=LoanType.find( @loan_application.loan_type_id) 
  @memberName = Member.find(@loan_application.member_id)
  
  if @loan_application.comaker2.nil?
   @comakerName2 = CoMaker.new  
     end
  
  @comakerName1 = CoMaker.find(@loan_application.comaker1)
  @comakerName2 = CoMaker.find(@loan_application.comaker2)
  
     if @comakerName2.nil?
     @comakerName2 = CoMaker.new  
     end
  end

  # GET /loan_applications/new
  def new
    @members = Member.all
    @loan_application = LoanApplication.new
    @loan_CM1 = CoMaker.where(coMakerId: ':coMaker1_id')
    
    
  end

  # GET /loan_applications/1/edit
  def edit
  end  

  # POST /loan_applications
  # POST /loan_applications.json
  def create
    
    @loan_application = LoanApplication.new(loan_application_params)
  
    respond_to do |format|
      if @loan_application.save
     
        format.html { redirect_to @loan_application, notice: 'Loan application was successfully created.' }
        format.json { render :show, status: :created, location: @loan_application }
      else
        format.html { render :new }
        format.json { render json: @loan_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loan_applications/1
  # PATCH/PUT /loan_applications/1.json
  def update
    respond_to do |format|
      if @loan_application.update(loan_application_params)
        format.html { redirect_to @loan_application, notice: 'Loan application was successfully updated.' }
        format.json { render :show, status: :ok, location: @loan_application }
      else
        format.html { render :edit }
        format.json { render json: @loan_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loan_applications/1
  # DELETE /loan_applications/1.json
  def destroy
    @loan_application.destroy
    respond_to do |format|
      format.html { redirect_to loan_applications_url, notice: 'Loan application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_application
      @loan_application = LoanApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loan_application_params
      params.require(:loan_application).permit( :loan_type_id, :member_id, :date_filed, :date_approved, :date_released, :other_resources, :total_family_income, 
      :real_properties, :remarks, :application_type, :loan_amount, :term_of_payment, :payment_per_term, :penalty_amount, :comaker1,  :relationship1, :comaker2, :relationship2)
    end
  end