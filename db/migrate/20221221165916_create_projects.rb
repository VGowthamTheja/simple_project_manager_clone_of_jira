# frozen_string_literal: true

# migrate file that used to make changes in projects table.
class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :status, null: false
      t.string :team_lead, null: false

      t.timestamps
    end
  end
end
