class ActiveRecord::ConnectionAdapters::SQLiteAdapter
  def should_shutup?(sql)
    # Aaaaargh, I hate these log entries SO MUCH
    sql.match(/^\s*SELECT\s+name\s+FROM\s+sqlite_master\s+/)
  end

  if Rails::VERSION::MAJOR == 2
    def log_info(sql, name, ms)
      super unless should_shutup?(sql)
    end
  else
    def execute(sql, name = nil) #:nodoc:
      if should_shutup?(sql)
        @connection.execute(sql)
      else
        log(sql, name) { @connection.execute(sql) }
      end
    end
  end
end
