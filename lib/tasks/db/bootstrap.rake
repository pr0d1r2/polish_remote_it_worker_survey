namespace :db do

  desc 'Create development database from scratch and prepare test database'
  task :bootstrap => [ :drop, :create, :migrate ] do
    Rake::Task['db:test:clone'].invoke
  end

end
