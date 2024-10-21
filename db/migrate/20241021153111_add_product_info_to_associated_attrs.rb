class AddProductInfoToAssociatedAttrs < ActiveRecord::Migration[7.1]
  def change
    add_column :associated_attrs, :product_info, :json
  end
end
