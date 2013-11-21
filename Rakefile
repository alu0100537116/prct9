$:.unshift File.dirname(__FILE__) + 'lib'

require "bundler/gem_tasks"
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Expectativas de la clase Matriz"
task :spec do
	sh "rspec -I. spec/matrices_spec.rb --format documentation"
end


desc "HTML"
task :thtml do
	sh "rspec -I. spec/matrices_spec.rb --format html"
end

desc " Ejecutar el main"
task :bin do
	sh "ruby -Ilib /lib/matrices.rb"
end
