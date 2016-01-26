class Email < ActiveRecord::Base
  validates :to, presence: true
end
