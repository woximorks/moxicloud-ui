class ActionlogController < ApplicationController
  def index
    @associated_attrs = AssociatedAttr.all

    # Collect all unique product keys specifically for ActionLog
    @product_keys = @associated_attrs.flat_map { |attr| attr.product_info['ActionLog']&.keys }.compact.uniq

    # Filter by selected products
    if params[:products].present?
      selected_products = params[:products]
      @associated_attrs = @associated_attrs.select do |attr|
        attr.product_info['ActionLog']&.keys&.any? { |product| selected_products.include?(product) }
      end
    end

    # Search functionality: filter by title
    if params[:search].present?
      search_term = params[:search].downcase
      @associated_attrs = @associated_attrs.select { |attr| attr.attr_title.downcase.include?(search_term) }
    end
  end
end