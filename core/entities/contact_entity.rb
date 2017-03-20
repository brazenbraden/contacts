class ContactEntity < BaseEntity
  attribute :id, Integer
  attribute :first_name, String
  attribute :last_name, String

  validates :first_name, presence: true
end