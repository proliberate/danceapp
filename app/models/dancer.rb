class Dancer < ActiveRecord::Base
  validates :email, :first_name, :last_name, presence: true
end
