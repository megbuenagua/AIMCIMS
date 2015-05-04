class SavingsController < ApplicationController
  before_action :set_saving, only: [:show, :edit, :update, :destroy]

  # GET /savings
  # GET /savings.json
  def index
   
    if params[:q].nil?
      #@savings = Saving.find_by_sql("SELECT * FROM savings INNER JOIN members ON  members.id = savings.member_id" )
       @member = Member.all
      #@savings.each do |sav|
      #  sav.member.fullname
      #end 
    else
      if params[:r] == "lastname"
      @member = Member.where( "lower(lastname) like ?", "%"+ params[:q].downcase + "%")
      else
      @member = Member.where( "member_number like ?", "%"+ params[:q] + "%" )
      end
    end
  end

  def search
    redirect_to :controller => 'savings', :action => 'index', :q => params[:q], :r => params[:r]
  end
  # GET /savings/1
  # GET /savings/1.json

  def member
    @memberName = Member.find(params[:member_id])
    @member = Saving.where( "member_id = ?", params[:member_id] )
    #@membername = Member.
    render :template => 'savings/member_savings'
  end
  
  def show
   @staffname=AdminStaff.find(@saving.staff_id) 
   @memberName = Member.find(@saving.member_id)
 
  end

  # GET /savings/new
  def new
    if params[:member_id].nil?
      @saving = Saving.new
    else
      @saving = Saving.new
      @member =  Member.find(params[:member_id])
    end
  end

  # GET /savings/1/edit
  def edit
  end

  # POST /savings
  # POST /savings.json
  def create
    @saving = Saving.new(saving_params)

    respond_to do |format|
      if @saving.save
        format.html { redirect_to @saving, notice: 'Saving was successfully created.' }
        format.json { render :show, status: :created, location: @saving }
      else
        format.html { render :new }
        format.json { render json: @saving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /savings/1
  # PATCH/PUT /savings/1.json
  def update
    respond_to do |format|
      if @saving.update(saving_params)
        format.html { redirect_to @saving, notice: 'Saving was successfully updated.' }
        format.json { render :show, status: :ok, location: @saving }
      else
        format.html { render :edit }
        format.json { render json: @saving.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /savings/1
  # DELETE /savings/1.json
  def destroy
    @saving.destroy
    respond_to do |format|
      format.html { redirect_to savings_url, notice: 'Saving was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saving
      @saving = Saving.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saving_params
      params.require(:saving).permit(:member_id, :date_time, :amount, :ornumber, :remarks, :staff_id)
    end
end
