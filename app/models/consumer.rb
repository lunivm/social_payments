class Consumer < ApplicationRecord
  belongs_to :street
  has_many :person_account
end
