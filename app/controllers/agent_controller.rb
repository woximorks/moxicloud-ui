class AgentController < ApplicationController
  def index
    @associated_attrs = AssociatedAttr.all

    # Collect all unique product keys specifically for Agent
    @product_keys = @associated_attrs.flat_map { |attr| attr.product_info['Agent']&.keys }.compact.uniq

    # If the user selected products, filter the associated attributes based on Agent products only
    if params[:products].present?
      selected_products = params[:products]
      
      # Select attributes where any of the selected products exist under Agent
      @associated_attrs = @associated_attrs.select do |attr|
        attr.product_info['Agent']&.keys&.any? { |product| selected_products.include?(product) }
      end
    end
  end
end