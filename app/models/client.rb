class Client < ApplicationRecord
  validates :contract, presence: true
  validates :name, presence: true
  validates :phone_model,  presence: true
  validates :workplace, presence: true
  validates :paid_amount, presence: true
  validates :remaining_amount, presence: true
  validates :duration, presence: true
  validates :pay_date, presence: true
  validates :phone_number, presence: true
end
