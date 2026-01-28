# typed: strong

module Amocrm
  module Models
    class PetUpdateWithFormParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::PetUpdateWithFormParams, Amocrm::Internal::AnyHash)
        end

      # Name of pet that needs to be updated
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Status of pet that needs to be updated
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(
          name: String,
          status: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Name of pet that needs to be updated
        name: nil,
        # Status of pet that needs to be updated
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            status: String,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
