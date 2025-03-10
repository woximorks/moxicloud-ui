class CompanyController < ApplicationController
  def index
    # Step 1: Get only attributes associated with Company
    @associated_attrs = AssociatedAttr.select do |attr|
      attr.associated_endpoints.include?("Company")
    end

    # Step 2: Collect all unique product keys specifically for Company
    @product_keys = @associated_attrs.flat_map { |attr| attr.product_info['Company']&.keys }.compact.uniq

    # Step 3: Filter by selected products
    if params[:products].present?
      selected_products = params[:products].sort
    
      case params[:filter_mode]
      when 'and'
        @associated_attrs = @associated_attrs.select do |attr|
          attr_products = attr.product_info['Company']&.keys || []
          (selected_products - attr_products).empty?
        end
      when 'exact'
        @associated_attrs = @associated_attrs.select do |attr|
          attr_products = attr.product_info['Company']&.keys || []
          attr_products.sort == selected_products
        end
      else
        @associated_attrs = @associated_attrs.select do |attr|
          attr.product_info['Company']&.keys&.any? { |product| selected_products.include?(product) }
        end
      end
    elsif params[:filter_mode] == 'exact'
      # If "exact" is selected but no products are checked, return no results
      @associated_attrs = []
    end    

    # Step 4: Search functionality (only within attributes already associated with Company)
    if params[:search].present?
      search_term = params[:search].downcase
      @associated_attrs = @associated_attrs.select { |attr| attr.attr_title.downcase.include?(search_term) }
    end
  end
end