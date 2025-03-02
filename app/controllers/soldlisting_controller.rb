class SoldlistingController < ApplicationController
  def index
    # Step 1: Get only attributes associated with SoldListing
    @associated_attrs = AssociatedAttr.select do |attr|
      attr.associated_endpoints.include?("SoldListing")
    end

    # Step 2: Collect all unique product keys specifically for SoldListing
    @product_keys = @associated_attrs.flat_map { |attr| attr.product_info['SoldListing']&.keys }.compact.uniq

    # Step 3: Filter by selected products
    if params[:products].present?
      selected_products = params[:products]
      @associated_attrs = @associated_attrs.select do |attr|
        attr.product_info['SoldListing']&.keys&.any? { |product| selected_products.include?(product) }
      end
    end

    # Step 4: Search functionality (only within attributes already associated with SoldListing)
    if params[:search].present?
      search_term = params[:search].downcase
      @associated_attrs = @associated_attrs.select { |attr| attr.attr_title.downcase.include?(search_term) }
    end
  end
end
