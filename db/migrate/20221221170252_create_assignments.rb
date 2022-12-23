# frozen_string_literal: true

# # migrate file that used to make changes in assignments table.
class CreateAssignments < ActiveRecord::Migration[7.0]
  def change # rubocop:disable Metrics/MethodLength
    create_table :assignments do |t|
      t.string :task, null: false
      t.string :description, null: false
      t.string :epic, null: false
      t.datetime :due_date, null: false
      t.string :task_owner
      t.string :assignee, null: false
      t.string :status, null: false
      t.references :project, null: false, foreign_key: true
      t.timestamps
    end
  end
end
