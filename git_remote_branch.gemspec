#!/usr/bin/env gem build
# -*- encoding: utf-8 -*-
$:.unshift File.expand_path("../lib", __FILE__)
require "version"

Gem::Specification.new do |s|
  s.name        = GitRemoteBranch::NAME.dup
  s.version     = GitRemoteBranch::VERSION::STRING.dup
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mathieu Martin", "Carl Mercier"]
  s.email       = "webmat@gmail.com"
  s.homepage    = "http://github.com/webmat/git_remote_branch"
  s.summary     = %q{git_remote_branch eases the interaction with remote branches}
  s.description = %q{git_remote_branch is a learning tool to ease the interaction with remote branches in simple situations.}

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "grb"

  s.add_dependency "colored", ">= 1.1"

  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables       = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths     = ["lib"]
  s.extra_rdoc_files  = ["README.rdoc"]
  s.rdoc_options      = ["--main", "README.rdoc", "--exclude", "lib"]
end
