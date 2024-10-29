class BrandController < ApplicationController
  def index
    @associated_attrs = AssociatedAttr.all

    # Collect all unique product keys specifically for Brand
    @product_keys = @associated_attrs.flat_map { |attr| attr.product_info['Brand']&.keys }.compact.uniq

    # If the user selected products, filter the associated attributes based on Brand products only
    if params[:products].present?
      selected_products = params[:products]
      
      # Select attributes where any of the selected products exist under Brand
      @associated_attrs = @associated_attrs.select do |attr|
        attr.product_info['Brand']&.keys&.any? { |product| selected_products.include?(product) }
      end
    end
  end
end