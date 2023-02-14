# frozen_string_literal: true

require_relative "lib/semantic_sort/version"

Gem::Specification.new do |spec|
  spec.name = "semantic_sort"
  spec.version = SemanticSort::VERSION
  spec.authors = ["Coro365"]
  spec.email = ["coro.365@gmail.com"]

  spec.summary = "semantic sort array."
  spec.description = "Sorts strings containing numbers in a semantic way."
  spec.homepage = "https://github.com/Coro365/semantic_sort"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Coro365/semantic_sort"
  spec.metadata["changelog_uri"] = "https://github.com/Coro365/semantic_sort"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
