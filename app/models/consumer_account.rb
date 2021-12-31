class ConsumerAccount < ApplicationRecord
  belongs_to :consumer
  belongs_to :bank
end
