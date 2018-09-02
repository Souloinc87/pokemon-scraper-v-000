class Pokemon
  attr_accessor :id, :name, :type, :db

  @@all = []

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.all
    @@all
  end

  def self.save(@name, @type, @db, database_connection)
    database_connection.execute("INSERT INTO pokemon (name, type, db) VALUES (?, ?, ?)", @name, @type, @db)
  end

end
