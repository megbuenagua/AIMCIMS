class AdminStaffsController < ApplicationController
  before_action :set_admin_staff, only: [:show, :edit, :update, :destroy]

  # GET /admin_staffs
  # GET /admin_staffs.json
  def index
    @admin_staffs = AdminStaff.all
  end

  # GET /admin_staffs/1
  # GET /admin_staffs/1.json
  def show
  end

  # GET /admin_staffs/new
  def new
    @admin_staff = AdminStaff.new
  end

  # GET /admin_staffs/1/edit
  def edit
  end

  # POST /admin_staffs
  # POST /admin_staffs.json
  def create
    @admin_staff = AdminStaff.new(admin_staff_params)
    
    if @admin_staff.password != '' 
        then @admin_staff.password = Digest::MD5.hexdigest(@admin_staff.password)
      end

    respond_to do |format|
      if @admin_staff.save
       _date = DateTime.now.strftime('%Y%m%d%H%M')
        #_staff = 1
        @admin_staff.staff_number= "1" + _date
        @admin_staff.save
        format.html { redirect_to @admin_staff, notice: 'Admin staff was successfully created.' }
        format.json { render :show, status: :created, location: @admin_staff }
      else
        format.html { render :new }
        format.json { render json: @admin_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_staffs/1
  # PATCH/PUT /admin_staffs/1.json
  def update
    respond_to do |format|
      if @admin_staff.update(admin_staff_params)
        format.html { redirect_to @admin_staff, notice: 'Admin/staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_staff }
      else
        format.html { render :edit }
        format.json { render json: @admin_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_staffs/1
  # DELETE /admin_staffs/1.json
  def destroy
    @admin_staff.destroy
    respond_to do |format|
      format.html { redirect_to admin_staffs_url, notice: 'Admin staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_staff
      @admin_staff = AdminStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_staff_params
      params.require(:admin_staff).permit(:staff_number, :staff_name, :date_hired, :staff_position, :status, :birthday, :password)
    end
end
