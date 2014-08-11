require 'rails_helper'

RSpec.describe Dancer, :type => :model do
  context "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
  end
end
