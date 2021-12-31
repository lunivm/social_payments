class ConsumerAccountsController < ApplicationController
  before_action :set_consumer_account, only: %i[ show edit update destroy ]

  # GET /consumer_accounts or /consumer_accounts.json
  def index
    @consumer_accounts = ConsumerAccount.all
  end

  # GET /consumer_accounts/1 or /consumer_accounts/1.json
  def show
  end

  # GET /consumer_accounts/new
  def new
    @consumer_account = ConsumerAccount.new
  end

  # GET /consumer_accounts/1/edit
  def edit
  end

  # POST /consumer_accounts or /consumer_accounts.json
  def create
    @consumer_account = ConsumerAccount.new(consumer_account_params)

    respond_to do |format|
      if @consumer_account.save
        format.html { redirect_to consumer_account_url(@consumer_account), notice: "Consumer account was successfully created." }
        format.json { render :show, status: :created, location: @consumer_account }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consumer_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consumer_accounts/1 or /consumer_accounts/1.json
  def update
    respond_to do |format|
      if @consumer_account.update(consumer_account_params)
        format.html { redirect_to consumer_account_url(@consumer_account), notice: "Consumer account was successfully updated." }
        format.json { render :show, status: :ok, location: @consumer_account }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consumer_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consumer_accounts/1 or /consumer_accounts/1.json
  def destroy
    @consumer_account.destroy

    respond_to do |format|
      format.html { redirect_to consumer_accounts_url, notice: "Consumer account was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consumer_account
      @consumer_account = ConsumerAccount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consumer_account_params
      params.require(:consumer_account).permit(:consumer_id, :bank_id, :account)
    end
end
