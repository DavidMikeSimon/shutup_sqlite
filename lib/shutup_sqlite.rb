module ShutupSqlite
  def annoying_query?(sql)
    # Aaaaargh, I hate these log entries SO MUCH
    sql.match(/^\s*SELECT\s+name\s+FROM\s+sqlite_master\s+/)
  end
end

require "activerecord_ext"
require "version"
