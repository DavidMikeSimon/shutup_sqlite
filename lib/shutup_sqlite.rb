class ActiveRecord::ConnectionAdapters::SQLiteAdapter
  # Aaaaargh
  def log_info(sql, name, ms)
    super(sql, name, ms) unless sql.match(/^\s*SELECT\s+name\s+FROM\s+sqlite_master\s+/)
  end
end
