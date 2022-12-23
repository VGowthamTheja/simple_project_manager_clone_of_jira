# frozen_string_literal: true

# Active record for the project.
class Project < ApplicationRecord
  include Completion

  has_many :assignments, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  # validates :status, presence: true
  validates :team_lead, presence: true
end
