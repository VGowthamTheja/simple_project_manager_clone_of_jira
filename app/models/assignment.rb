# frozen_string_literal: true

# communication of the assignment controller and model.
class Assignment < ApplicationRecord
  include Completion

  belongs_to :project

  validates :task, presence: true
  validates :description, presence: true, length: { minimum: 20 }
  validates :epic, presence: true
  validates :due_date, presence: true
  validates :assignee, presence: true
  # validates :status, presence: true
end
