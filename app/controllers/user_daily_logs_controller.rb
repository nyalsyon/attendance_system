class UserDailyLogsController < ApplicationController
  before_action :set_user_daily_log, only: [:show, :edit, :update, :destroy]

  # GET /user_daily_logs
  # GET /user_daily_logs.json
  def index
    @user_daily_logs = UserDailyLog.all
  end

  # GET /user_daily_logs/1
  # GET /user_daily_logs/1.json
  def show

  end

  # GET /user_daily_logs/new
  def new
    @user_daily_log = UserDailyLog.new
  end

  # GET /user_daily_logs/1/edit
  def edit
  end

  # POST /user_daily_logs
  # POST /user_daily_logs.json
  def create

    @user_daily_log = UserDailyLog.new(user_daily_log_params)

    respond_to do |format|
      if @user_daily_log.save
        format.html { redirect_to @user_daily_log, notice: 'User daily log was successfully created.' }
        format.json { render :show, status: :created, location: @user_daily_log }
      else
        format.html { render :new }
        format.json { render json: @user_daily_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_daily_logs/1
  # PATCH/PUT /user_daily_logs/1.json
  def update
    respond_to do |format|
      if @user_daily_log.update(user_daily_log_params)
        format.html { redirect_to @user_daily_log, notice: 'User daily log was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_daily_log }
      else
        format.html { render :edit }
        format.json { render json: @user_daily_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_daily_logs/1
  # DELETE /user_daily_logs/1.json
  def destroy
    @user_daily_log.destroy
    respond_to do |format|
      format.html { redirect_to user_daily_logs_url, notice: 'User daily log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_daily_log
      @user_daily_log = UserDailyLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_daily_log_params
      params.require(:user_daily_log).permit(:log_date, :logtime, :remarks :user_id)
    end
end
