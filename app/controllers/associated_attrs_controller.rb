class AssociatedAttrsController < ApplicationController
  before_action :set_associated_attr, only: %i[ show ]

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