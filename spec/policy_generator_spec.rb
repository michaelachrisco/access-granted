require "spec_helper"
require "generator_spec"

describe AccessGranted::Generators, type: :generator do
  destination File.expand_path("../../tmp", __FILE__)
  arguments %w(access_granted:policy)

  before(:all) do
    prepare_destination
    run_generator
  end

  it "creates a test initializer" do
    assert_file "app/policies/access_policy.rb", "access_policy.rb"
  end
end
