class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  # GET /members
  # GET /members.json
  def index
    if params[:q].nil?
      @members = Member.all
    else
      #@members = Member.where(lastname: params[:q])
      @members = Member.find_by_sql("SELECT * FROM members WHERE lower(lastname) similar to \'%" + params[:q] + "%\'")
    end
  end
  
  def search
    @memberln = Member.find_by lastname: params[:q]
    redirect_to :controller => 'members', :action => 'index', :q => params[:q]
  end

  # GET /members/1
  # GET /members/1.json
  def show
  end
  
  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        _date = DateTime.now.strftime('%Y%m%d%H%M')
        #_sequence = @member.id
        @member.member_number = "2" + _date
        @member.save
        format.html { redirect_to @member, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:member_number, :firstname, :middlename, :lastname, :gender, :birthdate, :permanent_address,
       :home_number, :office_number, :mobile_number, :personal_Email, :civil_status, :spouse, :occupation_of_spouse, :bank_account, 
       :enrolled_with_postbank, :employer, :employer_number, :position, :office_address, :office_email, :membership_type, :date_approved, :notes)
    end
end
