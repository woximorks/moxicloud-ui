class AssociatedAttrsController < ApplicationController
  before_action :set_associated_attr, only: %i[ show destroy ]

  # GET /associated_attrs or /associated_attrs.json
  def index
    @associated_attrs = AssociatedAttr.all
  end

  # GET /associated_attrs/1 or /associated_attrs/1.json
  def show
  end

  # GET /associated_attrs/new
  def new
    @associated_attr = AssociatedAttr.new
  end

  # POST /associated_attrs or /associated_attrs.json
  def create
    @associated_attr = AssociatedAttr.new(associated_attr_params)

    respond_to do |format|
      if @associated_attr.save
        format.html { redirect_to @associated_attr, notice: "Associated attr was successfully created." }
        format.json { render :show, status: :created, location: @associated_attr }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @associated_attr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associated_attrs/1 or /associated_attrs/1.json
  def destroy
    @associated_attr.destroy!

    respond_to do |format|
      format.html { redirect_to associated_attrs_path, status: :see_other, notice: "Associated attr was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def search
    if params[:query].present?
      @associated_attrs = AssociatedAttr.search_by_title(params[:query])
    else
      @associated_attrs = AssociatedAttr.all
    end
    render :index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_associated_attr
      @associated_attr = AssociatedAttr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def associated_attr_params
      params.require(:associated_attr).permit(:attr_title, :associated_endpoints, :general_info)
    end
end