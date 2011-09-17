require 'rubygems'
require 'rubygems/package_task'

require 'lib/version'
gemspec = Gem::Specification.new do |s|
  s.name         = "shutup-sqlite"
  s.version      = ShutupSqlite::VERSION
  s.authors      = ["David Mike Simon"]
  s.email        = "david.mike.simon@gmail.com"
  s.homepage     = "http://github.com/DavidMikeSimon/shutup-sqlite"
  s.summary      = "Filters out those annoying 'sqlite_master' log entries"
  s.description  = "This gem blocks those Rails log messages about 'sqlite_master' that fill up your development log"
  s.files        = `git ls-files .`.split("\n") - [".gitignore"]
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.rubyforge_project = '[none]'

  s.add_dependency('activerecord')
end

Gem::PackageTask.new(gemspec) do |pkg|
end
