# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'death/version'

Gem::Specification.new do |s|
  s.name = 'death'
  s.version = Death::VERSION

  s.license = 'MIT'

  s.authors = ['ITO Koichi']
  s.description = 'kill command wrapper. say "DEATH" with death voice. Operating environment is Mac OS X only.'
  s.email = 'koic.ito@gmail.com'
  s.files = Dir[
    'README.md',
    'lib/**/*',
    'bin/death',
    'death.gemspec',
    'LICENSE'
  ]
  s.add_dependency('facter')
  s.add_development_dependency('rspec', '>= 3.0.0')
  s.homepage = 'http://github.com/koic/death-command'
  s.require_paths = ['lib']
  s.summary = 'kill command wrapper. say "DEATH" with death voice.'
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
end
