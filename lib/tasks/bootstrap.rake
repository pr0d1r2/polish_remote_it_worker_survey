desc 'Create development environment'
task :bootstrap do
  [ 'db:bootstrap' ].each do |task|
    Rake::Task[task].invoke
  end
end
