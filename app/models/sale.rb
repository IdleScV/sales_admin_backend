class Sale < ApplicationRecord
  belongs_to :customer
  belongs_to :item
  belongs_to :user
  delegate  :merchant, :to => :item
end
