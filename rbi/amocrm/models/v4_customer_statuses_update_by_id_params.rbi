# typed: strong

module Amocrm
  module Models
    class V4CustomerStatusesUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::V4CustomerStatusesUpdateByIDParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :color

      sig { params(color: String).void }
      attr_writer :color

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(Integer)) }
      attr_reader :sort

      sig { params(sort: Integer).void }
      attr_writer :sort

      sig do
        params(
          color: String,
          name: String,
          sort: Integer,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(color: nil, name: nil, sort: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            color: String,
            name: String,
            sort: Integer,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
