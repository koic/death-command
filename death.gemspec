# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{death}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["koic"]
  s.date = %q{2012-03-29}
  s.description = %q{kill command wrapper. say "DEATH" with death voice. Operating environment is MacOS X only.}
  s.email = %q{koic.ito@gmail.com}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "README",
    "VERSION",
    "death",
    "death.gemspec"
  ]
  s.homepage = %q{http://github.com/koic/death-command}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{kill command wrapper. say "DEATH" with death voice.}
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

