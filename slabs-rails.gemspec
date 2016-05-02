lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name     = "slabs-rails"
  s.version  = "1.0.0"
  s.authors  = ["Jorge Najera"]
  s.email    = 'jorge.najera@boltech.mx'
  s.summary  = "Slabs Framework for Rails"
  s.homepage = "https://github.com/Boltech/slabs-rails"
  s.license  = 'MIT'

  s.add_runtime_dependency 'sass', '~> 3.3'

  # Twitter's Bootstrap 3.1.x
  s.add_development_dependency 'bootstrap-sass', '~> 3.3.6'

  s.files      = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- test/*`.split("\n")
end
