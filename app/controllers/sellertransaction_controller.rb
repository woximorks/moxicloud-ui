class SellertransactionController < ApplicationController
  def index
    @associated_attrs = AssociatedAttr.all

    @product_keys = @associated_attrs.flat_map { |attr| attr.product_info['SellerTransaction']&.keys }.compact.uniq

    if params[:products].present?
      selected_products = params[:products]
      
      @associated_attrs = @associated_attrs.select do |attr|
        attr.product_info['SellerTransaction']&.keys&.any? { |product| selected_products.include?(product) }
      end
    end
  end
end