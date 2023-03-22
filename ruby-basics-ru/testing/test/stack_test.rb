# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_stack_push
    stack = Stack.new

    stack.push! 'ruby'
    stack.push! 'js'
    stack.push! 'java'

    assert { stack.size == 3 }
    assert { stack.to_a == %w[ruby js java] }
  end

  def test_stack_pop
    stack = Stack.new
    assert { stack.empty? }

    stack.push! 'ruby'
    stack.push! 'js'
    stack.push! 'java'

    assert { stack.size == 3 }

    stack.pop!
    assert { stack.to_a == %w[ruby js] }
    assert { stack.size == 2 }
  end

  def test_stack_clear
    stack = Stack.new

    stack.push! 'ruby'
    stack.push! 'js'
    stack.push! 'java'

    stack.clear!
    assert { stack.empty? }
  end

  def test_stack_empty
    stack = Stack.new
    assert { stack.empty? }

    stack.push! 'ruby'
    assert { !stack.empty? }
  end

  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
