class Kid < ActiveRecord::Base
  validates :name, :favorite_toy, :age, presence: true
  validates :age, length: {maximum: 1}
end
