# typed: strong

module Amocrm
  module Models
    class PetUploadImageParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::PetUploadImageParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(Amocrm::Internal::FileInput) }
      attr_accessor :body

      # Additional Metadata
      sig { returns(T.nilable(String)) }
      attr_reader :additional_metadata

      sig { params(additional_metadata: String).void }
      attr_writer :additional_metadata

      sig do
        params(
          body: Amocrm::Internal::FileInput,
          additional_metadata: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        body:,
        # Additional Metadata
        additional_metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            body: Amocrm::Internal::FileInput,
            additional_metadata: String,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
