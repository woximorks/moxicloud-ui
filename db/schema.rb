# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_10_21_153111) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "associated_attrs", force: :cascade do |t|
    t.string "attr_title"
    t.json "associated_endpoints"
    t.string "general_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "actionlog_info"
    t.string "agent_info"
    t.string "brand_info"
    t.string "buyertransaction_info"
    t.string "company_info"
    t.string "contact_info"
    t.string "emailcampaign_info"
    t.string "event_info"
    t.string "gallery_info"
    t.string "group_info"
    t.string "leadsource_info"
    t.string "listing_info"
    t.string "office_info"
    t.string "presentationlog_info"
    t.string "sellertransaction_info"
    t.string "soldlisting_info"
    t.string "task_info"
    t.string "team_info"
    t.string "webuser_info"
    t.json "product_info"
  end

end
