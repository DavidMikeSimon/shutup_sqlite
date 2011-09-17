class ActiveRecord::ConnectionAdapters::SQLiteAdapter
  if Rails::VERSION::MAJOR == 2
    def log_info(sql, name, ms)
      super unless ShutupSqlite::annoying_query?(sql)
    end
  else
    def execute(sql, name = nil) #:nodoc:
      if ShutupSqlite::annoying_query?(sql)
        @connection.execute(sql) # Execute without logging
      else
        log(sql, name) { @connection.execute(sql) }
      end
    end
  end
end
