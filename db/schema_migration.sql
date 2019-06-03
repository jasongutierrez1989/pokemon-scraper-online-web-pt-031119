-- Write your sql commands to create your db schema here.
-- It should create a table in a new table in the db/ directory.
def self.create_table
  sql = <<-SQL
    CREATE TABLE IF NOT EXISTS pokemon(
      id PRIMARY KEY INTEGER,
      name TEXT,
      type TEXT,
      db TEXT,
      hp TEXT
    )
    SQL

    DB[:conn].execute(sql)

end
