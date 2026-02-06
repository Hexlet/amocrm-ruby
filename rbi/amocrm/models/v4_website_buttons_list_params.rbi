# typed: strong

module Amocrm
  module Models
    class V4WebsiteButtonsListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4WebsiteButtonsListParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      sig { returns(T.nilable(String)) }
      attr_reader :with

      sig { params(with: String).void }
      attr_writer :with

      sig do
        params(
          limit: Integer,
          page: Integer,
          with: String,
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(limit: nil, page: nil, with: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            limit: Integer,
            page: Integer,
            with: String,
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
