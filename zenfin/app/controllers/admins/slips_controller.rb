class Admins::SlipsController < Admins::ApplicationController
  before_action :set_admins_slip, only: %i[ show edit update destroy ]

  # GET /admins/slips or /admins/slips.json
  def index
    @admins_slips = Slip.all
  end

  #GET /dashboard
  def dashboard
    @admins_slips = Slip.last(4)
  end

  # GET /admins/slips/1 or /admins/slips/1.json
  def show
    @admins_slip = Slip.find(params[:id])
    print @admins_slip.amount
  end

  # GET /admins/slips/new
  def new
    @admins_slip = Slip.new
  end

  # GET /admins/slips/1/edit
  def edit
  end

  # POST /admins/slips or /admins/slips.json
  def create
    @admins_slip = Slip.new(admins_slip_params)

    respond_to do |format|
      if @admins_slip.save
        format.html { redirect_to [:admins, @admins_slip], notice: "Slip was successfully created." }
        format.json { render :show, status: :created, location: @admins_slip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admins_slip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/slips/1 or /admins/slips/1.json
  def update
    respond_to do |format|
      if @admins_slip.update(admins_slip_params)
        format.html { redirect_to [:admins, @admins_slip], notice: "Slip was successfully updated." }
        format.json { render :show, status: :ok, location: @admins_slip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admins_slip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/slips/1 or /admins/slips/1.json
  def destroy
    @admins_slip.destroy

    respond_to do |format|
      format.html { redirect_to [:admins, @admins_slip], notice: "Slip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admins_slip
      @admins_slip = Slip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admins_slip_params
      params.fetch(:slip, {}).permit(:number, :payee, :amount, :supplement, :sspn_id, :account, :year, :reimbursement, :issue_date)
    end
end
