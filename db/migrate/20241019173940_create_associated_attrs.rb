class CreateAssociatedAttrs < ActiveRecord::Migration[7.1]
  def change
    create_table :associated_attrs do |t|
      t.string :attr_title
      t.json :associated_endpoints
      t.json :general_info

      t.timestamps
    end
  end
end
