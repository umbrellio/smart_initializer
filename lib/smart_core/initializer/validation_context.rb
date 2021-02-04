# frozen_string_literal: true

class SmartCore::Initializer::ValidationContext
  attr_reader :instance
  attr_reader :attribute

  def initialize(instance, attribute)
    @instance = instance
    @attribute = attribute
  end
end
