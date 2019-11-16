
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative "./lib/snacks/version" 


Gem::Specification.new do |spec|
  spec.name          = "nuts_snacks"
  spec.version       = Snacks::VERSION
  spec.authors       = ["RachelCodesToo"]
  spec.email         = ["a.r.fausto@gmail.com"]
  spec.date          = "2019-11-15"
  spec.summary       = "A program that retrieves data from Nuts.com"
  spec.description   = "will list nutrition facts of all their snack offerings"
  spec.homepage      = "https://github.com/RachelCodesToo/snacks"
  spec.license       = "MIT"
  spec.files         = ["lib/snacks.rb","lib/snacks/version.rb", "lib/snacks/cli.rb", "lib/snacks/nutsdata.rb", "lib/snacks/scraper.rb", "config/environment.rb"]



  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
  #   `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # end
  # spec.bindir        = "exe"
  spec.executables << "snacks"
  # spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
