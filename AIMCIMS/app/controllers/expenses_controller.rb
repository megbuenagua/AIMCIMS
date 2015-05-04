class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]

  # GET /expenses
  # GET /expenses.json
  def index
   
    if params[:q].nil?
       @expenses = Expense.all.order('expense_date DESC')
    else
      if params[:r] == "category"
       @expenses = Expense.find_by_sql("SELECT * FROM expenses WHERE lower(" + params[:r]+ ") similar to '" + params[:q] + "%\'ORDER BY expense_date")
      else
       @expenses = Expense.find_by_sql("SELECT * FROM expenses WHERE expense_date = \'" + params[:q] + "\'")
      end
    end
  end
  
  def search
    redirect_to :controller => 'expenses', :action => 'index', :r => params[:r], :q => params[:q]
  end
  # GET /expenses/1
  # GET /expenses/1.json
  def show
   @staffname=AdminStaff.find(@expense.staff_id) 
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = Expense.new(expense_params)

    respond_to do |format|
      if @expense.save
        format.html { redirect_to @expense, notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { redirect_to @expense, notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to expenses_url, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_params
      params.require(:expense).permit(:category, :particulars, :expense_date, :amount, :approved_by, :received_by, :staff_id)
    end
end
