# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :bundler do
  watch('Gemfile')
end

guard 'rspec', :version => 2 do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})	{ |m| "spec/#{m[1]}_spec.rb"}
end


guard 'gitpusher' do
  watch(/(.*)/) {|m| `git add -u;git add -A;git commit -m "auto upload by gitpusher";git push` } 
end
