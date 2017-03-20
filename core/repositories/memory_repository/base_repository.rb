class MemoryRepository::BaseRepository

  def initialize
    @records = {}
    @id = 1
  end

  def create(params = {})
    entity = entity_class.new(params.merge!({id: @id}))
    @records[@id] = entity
    @id += 1
    entity
  end

  def update(id, params = {})
    resource = self.find(id)
    resource.attributes = params
    @records[id] = resource
  end

  def delete(id)
    resource = self.find(id)
    resource.is_deleted = !resource.is_deleted
    @records[id] = resource
  end

  def all
    @records
  end

  def find(id)
    @records[id]
  end

  def first
    @records.first
  end

  def last
    @records.last
  end

end