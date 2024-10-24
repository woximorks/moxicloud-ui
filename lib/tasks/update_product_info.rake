namespace :associated_attrs do
  task update_product_info: :environment do
    AssociatedAttr.find_each do |record|
      updated_product_info = {}
  
      if record.associated_endpoints
        record.associated_endpoints.each do |endpoint|
          updated_product_info[endpoint] = []
        end
  
        record.update(product_info: updated_product_info)
      end
    end
    puts "Task completed successfully"
  end
  task add_product_level_association: :environment do
    file_path = Rails.root.join('lib', 'data', 'product_info.json')
    product_info_data = JSON.parse(File.read(file_path))
  
    # Iterate through all associated_attrs records
    AssociatedAttr.find_each do |record|
      # Get the attr_title of the current record
      attr_title = record.attr_title
  
      # Check if the attr_title exists in the JSON file
      if product_info_data[attr_title]
        updated_product_info = {}
  
        # Iterate over all the keys (like ActionLog, Agent, etc.) in the JSON file for this attr_title
        product_info_data[attr_title].each do |key, value|
          if record.associated_endpoints.include?(key)
            # Ensure we assign value as a direct dictionary, not wrapped in an array
            updated_product_info[key] = value.is_a?(Array) ? value[0] : value
          end
        end
  
        # Update the record with the populated product_info
        record.update(product_info: updated_product_info)
        puts "Updated '#{attr_title}' record successfully"
      else
        puts "No data found for '#{attr_title}' in product_info.json"
      end
    end
  
    puts "Task completed successfully"
  end
  
  
end