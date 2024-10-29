class CompanyController < ApplicationController
  def index
    @associated_attrs = AssociatedAttr.all

    # Collect all unique product keys specifically for Company
    @product_keys = @associated_attrs.flat_map { |attr| attr.product_info['Company']&.keys }.compact.uniq

    # If the user selected products, filter the associated attributes based on Company products only
    if params[:products].present?
      selected_products = params[:products]
      
      # Select attributes where any of the selected products exist under Company
      @associated_attrs = @associated_attrs.select do |attr|
        attr.product_info['Company']&.keys&.any? { |product| selected_products.include?(product) }
      end
    end
  end
end