Gem::Specification.new do |s|
  s.authors = ['Eli Foster']
  s.name = 'array_utility'
  s.summary = 'Provides some simple utilities for Array objects.'
  s.version = '1.1.0'
  s.description = 'Some simple but very useful utilities for Array objects. ' \
                  'It primarily focuses on using the most efficient methods ' \
                  'to get and modify certain values from Arrays.'
  s.email = 'elifosterwy@gmail.com'
  s.homepage = 'https://github.com/elifoster/array_utility'
  s.metadata = {
    'issue_tracker' => 'https://github.com/elifoster/array_utility/issues'
  }
  s.required_ruby_version = '>= 2.1'
  s.files = [
    'lib/array_utility.rb',

    'spec/test.rb',

    'examples/examples.rb'
  ]
end
