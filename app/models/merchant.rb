class Merchant < ApplicationRecord
    has_many :items
    has_many :sales, through: :items
    has_many :customers, through: :sales
end
