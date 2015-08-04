require "bundler/gem_tasks"
require "rake/testtask"
require "lifx_http"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

task :default => :test

desc "display all light info"
task :info do
  puts all_lights.get_info
end

desc "Turn all lights off"
task :off do
  puts all_lights.set_power_state 'off'
end

desc "Turn all lights on"
task :on do
  puts all_lights.set_power_state 'on'
end

desc "Toggle all lights"
task :toggle do
  puts all_lights.toggle
end

def all_lights
  LifxHttp::Api.with_default_selector('all')
end
