# typed: strong

module Amocrm
  module Models
    class EventGetByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::EventGetByIDParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_reader :with

      sig { params(with: String).void }
      attr_writer :with

      sig do
        params(
          id: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(id:, with: nil, request_options: {})
      end

      sig do
        override.returns(
          { id: Integer, with: String, request_options: Amocrm::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
