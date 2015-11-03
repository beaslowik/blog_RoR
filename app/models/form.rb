class Form < ActiveRecord::Base
  validates :email, presence: true, length: {minimum: 5}, format: /@/
  validates :text, presence: true
end
