source "http://rubygems.org"

# Specify this gem's dependencies in git_remote_branch.gemspec
gemspec

group :test do
  gem "thoughtbot-shoulda"
  gem "mocha"
  if RUBY_VERSION < '1.9'
    gem "redgreen"
    gem "ruby-debug"
  else
    gem "ruby-debug19"
  end
end
