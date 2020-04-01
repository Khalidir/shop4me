class Order < ApplicationRecord
  belongs_to :user
  belongs_to :perfume

  monetize :amount_cents
end
