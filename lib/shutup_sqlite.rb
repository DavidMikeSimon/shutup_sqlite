class ActiveRecord::ConnectionAdapters::SQLiteAdapter
  # Aaaaargh
  def execute(sql, name = nil) #:nodoc:
    if sql.match(/^\s*SELECT\s+name\s+FROM\s+sqlite_master\s+/)
      @connection.execute(sql)
    else
      log(sql, name) { @connection.execute(sql) }
    end
  end
end
