class PcfListsController < ApplicationController
  before_action :set_pcf_list, only: [:show, :edit, :update, :destroy]

  # GET /pcf_lists
  # GET /pcf_lists.json
  def index
    @pcf_lists = PcfList.all
  end

  # GET /pcf_lists/1
  # GET /pcf_lists/1.json
  def show
  end

  # GET /pcf_lists/new
  def new
    @pcf_list = PcfList.new
  end

  # GET /pcf_lists/1/edit
  def edit
  end

  # POST /pcf_lists
  # POST /pcf_lists.json
  def create
    @pcf_list = PcfList.new(pcf_list_params)

    respond_to do |format|
      if @pcf_list.save
        format.html { redirect_to @pcf_list, notice: 'Pcf list was successfully created.' }
        format.json { render :show, status: :created, location: @pcf_list }
      else
        format.html { render :new }
        format.json { render json: @pcf_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pcf_lists/1
  # PATCH/PUT /pcf_lists/1.json
  def update
    respond_to do |format|
      if @pcf_list.update(pcf_list_params)
        format.html { redirect_to @pcf_list, notice: 'Pcf list was successfully updated.' }
        format.json { render :show, status: :ok, location: @pcf_list }
      else
        format.html { render :edit }
        format.json { render json: @pcf_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pcf_lists/1
  # DELETE /pcf_lists/1.json
  def destroy
    @pcf_list.destroy
    respond_to do |format|
      format.html { redirect_to pcf_lists_url, notice: 'Pcf list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pcf_list
      @pcf_list = PcfList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pcf_list_params
      params.require(:pcf_list).permit(:title, :author, :Update_time, :content)
    end
end
