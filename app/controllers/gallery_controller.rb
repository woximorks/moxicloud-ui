class GalleryController < ApplicationController
  def index
    @associated_attrs = AssociatedAttr.all

    # Collect all unique product keys specifically for Gallery
    @product_keys = @associated_attrs.flat_map { |attr| attr.product_info['Gallery']&.keys }.compact.uniq

    # If the user selected products, filter the associated attributes based on Gallery products only
    if params[:products].present?
      selected_products = params[:products]
      
      # Select attributes where any of the selected products exist under Gallery
      @associated_attrs = @associated_attrs.select do |attr|
        attr.product_info['Gallery']&.keys&.any? { |product| selected_products.include?(product) }
      end
    end
  end
end