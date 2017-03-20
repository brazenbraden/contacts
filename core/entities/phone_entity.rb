class PhoneEntity < BaseEntity

  attribute :id, Integer
  attribute :number, String
  attribute :type, PhoneTypeEntity

end