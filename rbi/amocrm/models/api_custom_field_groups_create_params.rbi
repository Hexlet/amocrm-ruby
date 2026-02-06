# typed: strong

module Amocrm
  module Models
    class APICustomFieldGroupsCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Amocrm::APICustomFieldGroupsCreateParams,
            Amocrm::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Amocrm::APICustomFieldGroupsCreateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body:
            T::Array[Amocrm::APICustomFieldGroupsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::APICustomFieldGroupsCreateParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::APICustomFieldGroupsCreateParams::Body,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :name

        # Client-side request id
        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :sort

        sig { params(sort: Integer).void }
        attr_writer :sort

        sig do
          params(name: String, request_id: String, sort: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          name:,
          # Client-side request id
          request_id: nil,
          sort: nil
        )
        end

        sig do
          override.returns({ name: String, request_id: String, sort: Integer })
        end
        def to_hash
        end
      end
    end
  end
end
