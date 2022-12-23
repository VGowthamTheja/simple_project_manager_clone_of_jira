# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_221_222_174_034) do # rubocop:disable Metrics/BlockLength
  create_table 'assignments', force: :cascade do |t|
    t.string 'task', null: false
    t.string 'description', null: false
    t.string 'epic', null: false
    t.datetime 'due_date', null: false
    t.string 'task_owner'
    t.string 'assignee', null: false
    t.string 'status', null: false
    t.integer 'project_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['project_id'], name: 'index_assignments_on_project_id'
  end

  create_table 'employees', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.string 'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string 'unconfirmed_email'
    t.integer 'failed_attempts', default: 0, null: false
    t.string 'unlock_token'
    t.datetime 'locked_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['confirmation_token'], name: 'index_employees_on_confirmation_token', unique: true
    t.index ['email'], name: 'index_employees_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_employees_on_reset_password_token', unique: true
    t.index ['unlock_token'], name: 'index_employees_on_unlock_token', unique: true
  end

  create_table 'projects', force: :cascade do |t|
    t.string 'title', null: false
    t.string 'description', null: false
    t.string 'status', null: false
    t.string 'team_lead', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'assignments', 'projects'
end
