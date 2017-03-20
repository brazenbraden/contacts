class SqliteRepository::Models::Contact < ApplicationRecord
  has_many :emails
  has_many :phones
  has_many :addresses

  accepts_nested_attributes_for :emails, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :addresses, reject_if: :all_blank, allow_destroy: true
end
