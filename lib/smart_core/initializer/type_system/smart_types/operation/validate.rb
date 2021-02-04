# frozen_string_literal: true

module SmartCore::Initializer::TypeSystem::SmartTypes::Operation
  # @api private
  # @since 0.1.0
  class Validate < Base
    # @param value [Any]
    # @return [void]
    #
    # @api private
    # @since 0.1.0
    def call(value, _context)
      type.validate!(value)
    end
  end
end
