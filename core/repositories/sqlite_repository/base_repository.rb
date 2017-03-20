class SqliteRepository::BaseRepository

  def all
    model_class.all
  end

end