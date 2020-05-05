# frozen_string_literal: true

# @api private
# @since 0.1.0
class SmartCore::Initializer::TypeSystem::Interop::AbstractFactory
  class << self
    # @param type [Any]
    # @return [SmartCore::Initializer::TypeSystem::Interop]
    #
    # @api private
    # @since 0.1.0
    def create(type)
      valid_op = build_valid_operation(type)
      validate_op = build_validate_operation(type)
      cast_op = build_cast_operation(type)

      build_interop(valid_op, validate_op, cast_op)
    end

    private

    # @param type [Any]
    # @return [SmartCore::Initializer::TypeSystem::Interop::Operation]
    #
    # @api private
    # @since 0.1.0
    def build_valid_operation(type)
    end

    # @param type [Any]
    # @return [SmartCore::Initializer::TypeSystem::Interop::Operation]
    #
    # @api private
    # @since 0.1.0
    def build_validate_operation(type)
    end

    # @param type [Any]
    # @return [SmartCore::Initializer::TypeSystem::Interop::Operation]
    #
    # @api private
    # @since 0.1.0
    def build_cast_operation(type)
    end

    # @param valid_op [SmartCore::Initializer::TypeSystem::Interop::Operation]
    # @param validate_op [SmartCore::Initializer::TypeSystem::Interop::Operation]
    # @param cast_op [SmartCore::Initializer::TypeSystem::Interop::Operation]
    # @return [SmartCore::Initializer::TypeSystem::Interop]
    #
    # @api private
    # @since 0.1.0
    def build_interop(valid_op, validate_op, cast_op)
    end
  end
end
