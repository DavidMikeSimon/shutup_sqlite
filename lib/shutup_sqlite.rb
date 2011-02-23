class ActiveRecord::ConnectionAdapters::SQLiteAdapter
  # Aaaaargh
  def log_info(sql, name, ms)
    super(sql, name, ms) unless sql.match(/^SELECT name FROM 'sqlite_master'/)
  end
end
