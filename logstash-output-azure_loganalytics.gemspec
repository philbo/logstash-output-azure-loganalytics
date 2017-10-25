Gem::Specification.new do |s|
  s.name = 'logstash-output-azure_loganalytics'
  s.version    =  File.read("VERSION").strip
  s.authors = ["philbo"]
  s.summary = %q{logstash output plugin to store events into Azure Log Analytics}
  s.description = s.summary
  s.homepage = "http://github.com/philbo/logstash-output-azure_loganalytics"
  s.licenses = ["Apache-2.0s"]
  s.require_paths = ["lib"]

  # Files
  s.files = Dir["lib/**/*","spec/**/*","*.gemspec","*.md","CONTRIBUTORS","Gemfile","LICENSE","NOTICE.TXT", "vendor/jar-dependencies/**/*.jar", "vendor/jar-dependencies/**/*.rb", "VERSION", "docs/**/*"]

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency "rest-client", "1.8.0"
  s.add_runtime_dependency "azure-loganalytics-datacollector-api", "0.1.2"
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_development_dependency "logstash-codec-plain", "3.0.4"
  s.add_development_dependency "logstash-devutils", "1.3.4"
end
