desc "Run CruiseControl.rb tests"
task :cruise do
  Rake::Task['db:migrate'].invoke
  [ 'rspec spec', 'cucumber' ].each do |task|
    system(task)
  end
end
