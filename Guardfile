# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'spin', :test_unit => false do
  # uses the .rspec file
  # --colour --fail-fast --format documentation --tag ~slow
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})      { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')   { "spec" }

  watch(%r{^app/(.+)\.rb$})      { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/requests/#{m[1]}_spec.rb"] }
  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  watch('app/controllers/application_controller.rb')  { "spec/requests" }
end
