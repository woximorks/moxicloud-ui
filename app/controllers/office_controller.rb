class OfficeController < ApplicationController
  def index
    @associated_attrs = AssociatedAttr.all

    # Collect all unique product keys specifically for Office
    @product_keys = @associated_attrs.flat_map { |attr| attr.product_info['Office']&.keys }.compact.uniq

    # If the user selected products, filter the associated attributes based on Office products only
    if params[:products].present?
      selected_products = params[:products]
      
      # Select attributes where any of the selected products exist under Office
      @associated_attrs = @associated_attrs.select do |attr|
        attr.product_info['Office']&.keys&.any? { |product| selected_products.include?(product) }
      end
    end
  end
end