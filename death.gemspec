# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "death/version"

Gem::Specification.new do |s|
  s.name = 'death'
  s.version = Death::VERSION

  s.authors = ["ITO Koichi"]
  s.date = "2012-04-02"
  s.description = %q{kill command wrapper. say "DEATH" with death voice. Operating environment is Mac OS X only.}
  s.email = %q{koic.ito@gmail.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "README.rdoc",
    "lib/death/version.rb",
    "bin/death",
    "death.gemspec",
    "LICENSE"
  ]
  s.homepage = %q{http://github.com/koic/death-command}
  s.require_paths = ["lib"]
  s.summary = %q{kill command wrapper. say "DEATH" with death voice.}
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
end

