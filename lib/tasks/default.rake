task :db_prepare do
  [ "db:create", "db:migrate", "db:test:clone" ].each do |task|
    Rake::Task[task].invoke
  end
end

task :test => [:db_prepare, :spec, :cucumber]

task :default => [:test]
