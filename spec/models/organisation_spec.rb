require 'rails_helper'

RSpec.describe Organisation, type: :model do
  it { should validate_presence_of(:name) }
  it { should ensure_length_of(:name).is_at_least(5) }
  it { should validate_presence_of(:description) }
  it { should ensure_length_of(:description).is_at_least(10) }
end
