Contacts::Application.config.to_prepare do
  Repository.register(:contact, ::SqliteRepository::Bridges::Contact.new)
  Repository.register(:phone_type, ::SqliteRepository::Bridges::PhoneType.new)
  Repository.register(:email_type, ::SqliteRepository::Bridges::EmailType.new)
end