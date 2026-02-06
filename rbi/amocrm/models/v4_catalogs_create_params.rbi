# typed: strong

module Amocrm
  module Models
    class V4CatalogsCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4CatalogsCreateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::V4CatalogsCreateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::V4CatalogsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::V4CatalogsCreateParams::Body],
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
              Amocrm::V4CatalogsCreateParams::Body,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_add_elements

        sig { params(can_add_elements: T::Boolean).void }
        attr_writer :can_add_elements

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_link_multiple

        sig { params(can_link_multiple: T::Boolean).void }
        attr_writer :can_link_multiple

        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :sort

        sig { params(sort: Integer).void }
        attr_writer :sort

        sig do
          returns(
            T.nilable(
              T.any(
                Amocrm::V4CatalogsCreateParams::Body::Type::OrSymbol,
                String
              )
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              T.any(
                Amocrm::V4CatalogsCreateParams::Body::Type::OrSymbol,
                String
              )
          ).void
        end
        attr_writer :type

        sig do
          params(
            name: String,
            can_add_elements: T::Boolean,
            can_link_multiple: T::Boolean,
            request_id: String,
            sort: Integer,
            type:
              T.any(
                Amocrm::V4CatalogsCreateParams::Body::Type::OrSymbol,
                String
              )
          ).returns(T.attached_class)
        end
        def self.new(
          name:,
          can_add_elements: nil,
          can_link_multiple: nil,
          request_id: nil,
          sort: nil,
          type: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              can_add_elements: T::Boolean,
              can_link_multiple: T::Boolean,
              request_id: String,
              sort: Integer,
              type:
                T.any(
                  Amocrm::V4CatalogsCreateParams::Body::Type::OrSymbol,
                  String
                )
            }
          )
        end
        def to_hash
        end

        module Type
          extend Amocrm::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Amocrm::V4CatalogsCreateParams::Body::Type::TaggedSymbol,
                String
              )
            end

          sig do
            override.returns(
              T::Array[Amocrm::V4CatalogsCreateParams::Body::Type::Variants]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Amocrm::V4CatalogsCreateParams::Body::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REGULAR =
            T.let(
              :regular,
              Amocrm::V4CatalogsCreateParams::Body::Type::TaggedSymbol
            )
          INVOICES =
            T.let(
              :invoices,
              Amocrm::V4CatalogsCreateParams::Body::Type::TaggedSymbol
            )
          PRODUCTS =
            T.let(
              :products,
              Amocrm::V4CatalogsCreateParams::Body::Type::TaggedSymbol
            )
        end
      end
    end
  end
end
