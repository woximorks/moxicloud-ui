namespace :associated_attrs do
  task update_product_info: :environment do
    AssociatedAttr.find_each do |record|
      updated_product_info = {}
  
      if record.associated_endpoints
        record.associated_endpoints.each do |endpoint|
          updated_product_info[endpoint] = ["", "", ""]
        end
  
        record.update(product_info: updated_product_info)
      end
    end
    puts "Task completed successfully"
  end
end