class LoginAccountsController < ApplicationController
  before_action :set_login_account, only: [:show, :edit, :update, :destroy]

  # GET /login_accounts
  # GET /login_accounts.json
  def index
    @login_accounts = LoginAccount.all
  end

  # GET /login_accounts/1
  # GET /login_accounts/1.json
  def show
  end

  # GET /login_accounts/new
  def new
    @login_account = LoginAccount.new
  end

  # GET /login_accounts/1/edit
  def edit
  end

  # POST /login_accounts
  # POST /login_accounts.json
  def create
    @login_account = LoginAccount.new(login_account_params)

    respond_to do |format|
      if @login_account.save
        format.html { redirect_to @login_account, notice: 'Login account was successfully created.' }
        format.json { render :show, status: :created, location: @login_account }
      else
        format.html { render :new }
        format.json { render json: @login_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /login_accounts/1
  # PATCH/PUT /login_accounts/1.json
  def update
    respond_to do |format|
      if @login_account.update(login_account_params)
        format.html { redirect_to @login_account, notice: 'Login account was successfully updated.' }
        format.json { render :show, status: :ok, location: @login_account }
      else
        format.html { render :edit }
        format.json { render json: @login_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /login_accounts/1
  # DELETE /login_accounts/1.json
  def destroy
    @login_account.destroy
    respond_to do |format|
      format.html { redirect_to login_accounts_url, notice: 'Login account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login_account
      @login_account = LoginAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def login_account_params
      params.require(:login_account).permit(:loginId, :username, :password)
    end
end
