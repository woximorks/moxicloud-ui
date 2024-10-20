class AddEndpointInfoToAssociatedAttrs < ActiveRecord::Migration[7.1]
  def change
    add_column :associated_attrs, :actionlog_info, :string
    add_column :associated_attrs, :agent_info, :string
    add_column :associated_attrs, :brand_info, :string
    add_column :associated_attrs, :buyertransaction_info, :string
    add_column :associated_attrs, :company_info, :string
    add_column :associated_attrs, :contact_info, :string
    add_column :associated_attrs, :emailcampaign_info, :string
    add_column :associated_attrs, :event_info, :string
    add_column :associated_attrs, :gallery_info, :string
    add_column :associated_attrs, :group_info, :string
    add_column :associated_attrs, :leadsource_info, :string
    add_column :associated_attrs, :listing_info, :string
    add_column :associated_attrs, :office_info, :string
    add_column :associated_attrs, :presentationlog_info, :string
    add_column :associated_attrs, :sellertransaction_info, :string
    add_column :associated_attrs, :soldlisting_info, :string
    add_column :associated_attrs, :task_info, :string
    add_column :associated_attrs, :team_info, :string
    add_column :associated_attrs, :webuser_info, :string
  end
end
