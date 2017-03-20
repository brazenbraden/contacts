class EmailEntity < BaseEntity

  attribute :id, Integer
  attribute :email, String
  attribute :email_type, EmailTypeEntity

end