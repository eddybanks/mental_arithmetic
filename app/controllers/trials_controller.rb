class TrialsController < ApplicationController
  before_action :set_test
  before_action :set_trial, only: [:show, :edit, :update, :destroy]

  # GET /trials
  # GET /trials.json
  def index
    @trials = @test.trials.all
    @page_header = "List of Trials for #{@test.name}"
  end

  # GET /trials/1
  # GET /trials/1.json
  def show
  end

  # GET /trials/new
  def new
    @trial = @test.trials.new
    @page_header = "New Trial"
  end

  # GET /trials/1/edit
  def edit
    @page_header = "Edit Trial"
  end

  # POST /trials
  # POST /trials.json
  def create
    @trial = @test.trials.new(trial_params)

    respond_to do |format|
      if @trial.save
        format.html { redirect_to [@test, @trial], notice: 'Trial was successfully created.' }
        format.json { render :show, status: :created, location: [@test, @trial] }
      else
        format.html { render :new }
        format.json { render json: [@test, @trial].errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trials/1
  # PATCH/PUT /trials/1.json
  def update
    respond_to do |format|
      if @trial.update(trial_params)
        format.html { redirect_to [@test, @trial], notice: 'Trial was successfully updated.' }
        format.json { render :show, status: :ok, location: [@test, @trial] }
      else
        format.html { render :edit }
        format.json { render json: [@test, @trial].errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trials/1
  # DELETE /trials/1.json
  def destroy
    @trial.destroy
    respond_to do |format|
      format.html { redirect_to test_trials_url, notice: 'Trial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trial
      @trial = @test.trials.find(params[:id])
    end

    def set_test
      @test = Test.find(params[:test_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trial_params
      params.require(:trial).permit(:name, :accuracy_rating, :test_id)
    end
end
