# frozen_string_literal: true

module SmartCore::Initializer::TypeSystem::ThyTypes::Operation
  # @api private
  # @since 0.1.0
  class Validate < Base
    # @param value [Any]
    # @return [void]
    #
    # @api private
    # @since 0.1.0
    def call(value, instance, attribute)
      return if type.check(value).success?

      raise(SmartCore::Initializer::ThyTypeValidationError, <<~ERROR_MESSAGE)
        Incorrect type of #{attribute.name.inspect} attribute for #{instance.class}
        Expected: #{type.inspect}, but got: #{value.inspect}
      ERROR_MESSAGE
    end
  end
end
