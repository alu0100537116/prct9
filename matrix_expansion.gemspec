# -*- encoding: utf-8 -*-
require File.expand_path('../lib/matrix_expansion/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Lorenzo | Norberto"]
  gem.email         = ["alu0100537116@ull.edu.es"]
  gem.description   = %q{Gema de matrices densas y dispersas}
  gem.summary       = %q{Matrices densas y dispersas.}
  gem.homepage      = "https://github.com/alu0100537116/prct9.git"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "Matrix_expansion"
  gem.require_paths = ["lib"]
  gem.version       =MatrixExpansion::VERSION
end
