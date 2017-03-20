Contacts::Application.config.to_prepare do

  # if Rails.env.test?
    Repository.register(:contact, MemoryRepository::ContactRepository.new)
  # end

  # if Rails.env.development?
  #   Repository.register(:contact, ::SqliteRepository::Bridges::ContactRepository.new)
  #   Repository.register(:phone_type, ::SqliteRepository::Bridges::PhoneType.new)
  #   Repository.register(:email_type, ::SqliteRepository::Bridges::EmailType.new)
  # end

end
