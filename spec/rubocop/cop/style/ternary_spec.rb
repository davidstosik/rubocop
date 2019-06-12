# frozen_string_literal: true

RSpec.describe RuboCop::Cop::Style::Ternary do
  subject(:cop) { described_class.new }

  it "registers an offense when seeing a ternary operator" do

    expect_offense(<<~RUBY)
      cond ? a : b
      ^^^^^^^^^^^^ Avoid the ternary operator completely. Use `if` or `unless` instead.
    RUBY
  end
end
