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
# rubocop:disable Metrics/BlockLength
ActiveRecord::Schema[7.0].define(version: 20_230_103_162_551) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'group_shops', force: :cascade do |t|
    t.bigint 'group_id', null: false
    t.bigint 'shop_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['group_id'], name: 'index_group_shops_on_group_id'
    t.index ['shop_id'], name: 'index_group_shops_on_shop_id'
  end

  create_table 'groups', force: :cascade do |t|
    t.string 'name'
    t.text 'icon'
    t.bigint 'author_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['author_id'], name: 'index_groups_on_author_id'
  end

  create_table 'shops', force: :cascade do |t|
    t.string 'name'
    t.integer 'amount'
    t.bigint 'author_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['author_id'], name: 'index_shops_on_author_id'
  end

  create_table 'usage', force: :cascade do |t|
    t.string 'name'
    t.integer 'amount'
    t.bigint 'author_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['author_id'], name: 'index_usage_on_author_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'group_shops', 'groups'
  add_foreign_key 'group_shops', 'shops'
  add_foreign_key 'groups', 'users', column: 'author_id'
  add_foreign_key 'shops', 'users', column: 'author_id'
  add_foreign_key 'usage', 'users', column: 'author_id'
end
# rubocop:enable Metrics/BlockLength
