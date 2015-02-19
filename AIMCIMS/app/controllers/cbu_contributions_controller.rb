class CbuContributionsController < ApplicationController
  before_action :set_cbu_contribution, only: [:show, :edit, :update, :destroy]

  # GET /cbu_contributions
  # GET /cbu_contributions.json
  def index
    @cbu_contributions = CbuContribution.all
  end

  # GET /cbu_contributions/1
  # GET /cbu_contributions/1.json
  def show
  end

  # GET /cbu_contributions/new
  def new
    @cbu_contribution = CbuContribution.new
  end

  # GET /cbu_contributions/1/edit
  def edit
  end

  # POST /cbu_contributions
  # POST /cbu_contributions.json
  def create
    @cbu_contribution = CbuContribution.new(cbu_contribution_params)

    respond_to do |format|
      if @cbu_contribution.save
        format.html { redirect_to @cbu_contribution, notice: 'Cbu contribution was successfully created.' }
        format.json { render :show, status: :created, location: @cbu_contribution }
      else
        format.html { render :new }
        format.json { render json: @cbu_contribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cbu_contributions/1
  # PATCH/PUT /cbu_contributions/1.json
  def update
    respond_to do |format|
      if @cbu_contribution.update(cbu_contribution_params)
        format.html { redirect_to @cbu_contribution, notice: 'Cbu contribution was successfully updated.' }
        format.json { render :show, status: :ok, location: @cbu_contribution }
      else
        format.html { render :edit }
        format.json { render json: @cbu_contribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cbu_contributions/1
  # DELETE /cbu_contributions/1.json
  def destroy
    @cbu_contribution.destroy
    respond_to do |format|
      format.html { redirect_to cbu_contributions_url, notice: 'Cbu contribution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cbu_contribution
      @cbu_contribution = CbuContribution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cbu_contribution_params
      params.require(:cbu_contribution).permit(:memberID, :date, :amount, :OrNumber, :staffId, :remarks)
    end
end
