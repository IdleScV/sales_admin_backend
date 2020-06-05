class Item < ApplicationRecord
  belongs_to :merchant
  has_many :sales
  has_many :customers, through: :sales
end
