class SqliteRepository::Bridges::Contact < SqliteRepository::BaseRepository

  def model_class
    SqliteRepository::Models::Contact
  end

end