lib = File.expand_path( '../lib/', __FILE__ )
$LOAD_PATH.unshift( lib ) unless $LOAD_PATH.include?( lib )

Gem::Specification.new do |s|
  s.name        = 'webtoken'
  s.version     = '0.0.1'
  s.date        = '2010-05-25'
  s.summary     = "WebToken"
  s.description = "Simplify web token using JWT"
  s.authors     = ["velusamy Venkatraman"]
  s.email       = 'velusamyvnp@gmail.com,'
  s.files       = ["lib/webtoken.rb"]
  # s.require_paths = [ "lib" ]
  s.homepage    =''
  s.license       = 'MIT'
end
