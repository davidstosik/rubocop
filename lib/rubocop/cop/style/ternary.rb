# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class Ternary < Cop
        # This cop checks for expressions using the ternary operator.
        #
        # @example
        #   # bad
        #   cond ? a : b
        #
        #   # good
        #   if cond
        #     a
        #   else
        #     b
        #   end
        MSG = "Avoid the ternary operator completely. Use `if` or `unless` instead."

        def on_if(node)
          if node.ternary?
            add_offense(node)
          end
        end
      end
    end
  end
end
