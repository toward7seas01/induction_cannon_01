# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{induction_cannon_01}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["zhanyinan"]
  s.date = %q{2011-03-02}
  s.description = %q{personal suit, base on dragoon_system}
  s.email = %q{toward7seas@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app/controllers/application_controller.rb",
    "app/controllers/blogs_controller.rb",
    "app/controllers/users_controller.rb",
    "app/helpers/application_helper.rb",
    "app/helpers/blogs_helper.rb",
    "app/helpers/users_helper.rb",
    "app/models/blog.rb",
    "app/models/user.rb",
    "app/views/blogs/_form.html.erb",
    "app/views/blogs/edit.html.erb",
    "app/views/blogs/index.html.erb",
    "app/views/blogs/new.html.erb",
    "app/views/blogs/show.html.erb",
    "app/views/layouts/application.html.erb",
    "app/views/users/_form.html.erb",
    "app/views/users/edit.html.erb",
    "app/views/users/index.html.erb",
    "app/views/users/new.html.erb",
    "app/views/users/show.html.erb",
    "config.ru",
    "config/application.rb",
    "config/boot.rb",
    "config/database.yml",
    "config/environment.rb",
    "config/environments/development.rb",
    "config/environments/production.rb",
    "config/environments/test.rb",
    "config/initializers/backtrace_silencers.rb",
    "config/initializers/inflections.rb",
    "config/initializers/mime_types.rb",
    "config/initializers/secret_token.rb",
    "config/initializers/session_store.rb",
    "config/locales/en.yml",
    "config/routes.rb",
    "db/migrate/20110301055018_create_users.rb",
    "db/migrate/20110302022059_create_blogs.rb",
    "db/migrate/20110302024844_add_user_id_to_blogs.rb",
    "db/schema.rb",
    "db/seeds.rb",
    "doc/README_FOR_APP",
    "induction_cannon_01.gemspec",
    "lib/induction_cannon_01.rb",
    "lib/tasks/.gitkeep",
    "pkg/induction_cannon_01-0.0.1.gem",
    "public/404.html",
    "public/422.html",
    "public/500.html",
    "public/favicon.ico",
    "public/images/rails.png",
    "public/index.html",
    "public/javascripts/application.js",
    "public/javascripts/controls.js",
    "public/javascripts/dragdrop.js",
    "public/javascripts/effects.js",
    "public/javascripts/prototype.js",
    "public/javascripts/rails.js",
    "public/robots.txt",
    "public/stylesheets/.gitkeep",
    "public/stylesheets/scaffold.css",
    "script/rails",
    "spec/models/extra_spec.rb",
    "spec/models/user_spec.rb",
    "spec/spec_helper.rb",
    "vendor/plugins/.gitkeep"
  ]
  s.homepage = %q{http://github.com/toward7seas01/induction_cannon_01}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{personal suit, base on dragoon_system}
  s.test_files = [
    "spec/models/extra_spec.rb",
    "spec/models/user_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["= 3.0.5"])
      s.add_runtime_dependency(%q<mysql2>, [">= 0"])
      s.add_runtime_dependency(%q<dragoon_system>, ["= 0.1.3"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.10"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.5.0"])
      s.add_development_dependency(%q<ruby-debug>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["= 3.0.5"])
      s.add_dependency(%q<mysql2>, [">= 0"])
      s.add_dependency(%q<dragoon_system>, ["= 0.1.3"])
      s.add_dependency(%q<bundler>, ["~> 1.0.10"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.5.0"])
      s.add_dependency(%q<ruby-debug>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["= 3.0.5"])
    s.add_dependency(%q<mysql2>, [">= 0"])
    s.add_dependency(%q<dragoon_system>, ["= 0.1.3"])
    s.add_dependency(%q<bundler>, ["~> 1.0.10"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.5.0"])
    s.add_dependency(%q<ruby-debug>, [">= 0"])
  end
end

