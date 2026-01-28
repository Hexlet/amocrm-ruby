# typed: strong

module Amocrm
  module Models
    class PetUploadImageResponse < Amocrm::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Amocrm::Models::PetUploadImageResponse,
            Amocrm::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Integer)) }
      attr_reader :code

      sig { params(code: Integer).void }
      attr_writer :code

      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      sig { returns(T.nilable(String)) }
      attr_reader :type

      sig { params(type: String).void }
      attr_writer :type

      sig do
        params(code: Integer, message: String, type: String).returns(
          T.attached_class
        )
      end
      def self.new(code: nil, message: nil, type: nil)
      end

      sig { override.returns({ code: Integer, message: String, type: String }) }
      def to_hash
      end
    end
  end
end
