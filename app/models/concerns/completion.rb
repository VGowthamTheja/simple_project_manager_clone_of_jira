# frozen_string_literal: true

# ActiveSupport for the application validation.
module Completion
  extend ActiveSupport::Concern

  VALID_STATUS = ['Open', 'Closed', 'In Progress', 'Done'].freeze

  included do
    validates :status, presence: true, inclusion: { in: VALID_STATUS }
  end
end
