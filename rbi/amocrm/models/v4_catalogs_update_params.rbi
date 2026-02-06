# typed: strong

module Amocrm
  module Models
    class V4CatalogsUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4CatalogsUpdateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::V4CatalogsUpdateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::V4CatalogsUpdateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::V4CatalogsUpdateParams::Body],
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
              Amocrm::V4CatalogsUpdateParams::Body,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_add_elements

        sig { params(can_add_elements: T::Boolean).void }
        attr_writer :can_add_elements

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_link_multiple

        sig { params(can_link_multiple: T::Boolean).void }
        attr_writer :can_link_multiple

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :sort

        sig { params(sort: Integer).void }
        attr_writer :sort

        sig do
          params(
            id: Integer,
            can_add_elements: T::Boolean,
            can_link_multiple: T::Boolean,
            name: String,
            request_id: String,
            sort: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          can_add_elements: nil,
          can_link_multiple: nil,
          name: nil,
          request_id: nil,
          sort: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              can_add_elements: T::Boolean,
              can_link_multiple: T::Boolean,
              name: String,
              request_id: String,
              sort: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
