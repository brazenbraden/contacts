class MemoryRepository::ContactRepository < MemoryRepository::BaseRepository

  def entity_class
    ContactEntity
  end

end