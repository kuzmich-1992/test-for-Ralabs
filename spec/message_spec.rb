require 'rails_helper'

  RSpec.describe Message, type: :model do
  # Validation tests
    it { should validate_presence_of(:readed) }
    it { should validate_presence_of(:created_at) }
  end