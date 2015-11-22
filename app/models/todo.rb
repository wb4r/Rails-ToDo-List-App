class Todo < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: {minimum: 2}
end
