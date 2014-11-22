class WelcomePagesController < ApplicationController
  before_action :set_welcome_page, only: [:show, :edit, :update, :destroy]

  # GET /welcome_pages
  # GET /welcome_pages.json
  def index
    @welcome_pages = WelcomePage.all
  end

  # GET /welcome_pages/1
  # GET /welcome_pages/1.json
  def show
  end

  # GET /welcome_pages/new
  def new
    @welcome_page = WelcomePage.new
  end

  # GET /welcome_pages/1/edit
  def edit
  end

  # POST /welcome_pages
  # POST /welcome_pages.json
  def create
    @welcome_page = WelcomePage.new(welcome_page_params)

    respond_to do |format|
      if @welcome_page.save
        format.html { redirect_to @welcome_page, notice: 'Welcome page was successfully created.' }
        format.json { render :show, status: :created, location: @welcome_page }
      else
        format.html { render :new }
        format.json { render json: @welcome_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /welcome_pages/1
  # PATCH/PUT /welcome_pages/1.json
  def update
    respond_to do |format|
      if @welcome_page.update(welcome_page_params)
        format.html { redirect_to @welcome_page, notice: 'Welcome page was successfully updated.' }
        format.json { render :show, status: :ok, location: @welcome_page }
      else
        format.html { render :edit }
        format.json { render json: @welcome_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /welcome_pages/1
  # DELETE /welcome_pages/1.json
  def destroy
    @welcome_page.destroy
    respond_to do |format|
      format.html { redirect_to welcome_pages_url, notice: 'Welcome page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_welcome_page
      @welcome_page = WelcomePage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def welcome_page_params
      params[:welcome_page]
    end
end
