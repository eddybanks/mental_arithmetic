class BackwardsCountTestsController < ApplicationController
  before_action :set_backwards_count_test, only: [:show, :edit, :update, :destroy]

  # GET /backwards_count_tests
  # GET /backwards_count_tests.json
  def index
    @backwards_count_tests = BackwardsCountTest.all
  end

  # GET /backwards_count_tests/1
  # GET /backwards_count_tests/1.json
  def show
  end

  # GET /backwards_count_tests/new
  def new
    @backwards_count_test = BackwardsCountTest.new
  end

  # GET /backwards_count_tests/1/edit
  def edit
  end

  # POST /backwards_count_tests
  # POST /backwards_count_tests.json
  def create
    @backwards_count_test = BackwardsCountTest.new(backwards_count_test_params)

    respond_to do |format|
      if @backwards_count_test.save
        format.html { redirect_to @backwards_count_test, notice: 'Backwards count test was successfully created.' }
        format.json { render :show, status: :created, location: @backwards_count_test }
      else
        format.html { render :new }
        format.json { render json: @backwards_count_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backwards_count_tests/1
  # PATCH/PUT /backwards_count_tests/1.json
  def update
    respond_to do |format|
      if @backwards_count_test.update(backwards_count_test_params)
        format.html { redirect_to @backwards_count_test, notice: 'Backwards count test was successfully updated.' }
        format.json { render :show, status: :ok, location: @backwards_count_test }
      else
        format.html { render :edit }
        format.json { render json: @backwards_count_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backwards_count_tests/1
  # DELETE /backwards_count_tests/1.json
  def destroy
    @backwards_count_test.destroy
    respond_to do |format|
      format.html { redirect_to backwards_count_tests_url, notice: 'Backwards count test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backwards_count_test
      @backwards_count_test = BackwardsCountTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def backwards_count_test_params
      params.require(:backwards_count_test).permit(:accuracy_rating)
    end
end
