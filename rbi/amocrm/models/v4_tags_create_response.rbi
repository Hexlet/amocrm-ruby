# typed: strong

module Amocrm
  module Models
    module V4TagsCreateResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::V4TagsCreateResponse::TagCreateResponse,
            Amocrm::Models::V4TagsCreateResponse::Problem
          )
        end

      class TagCreateResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::V4TagsCreateResponse::TagCreateResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig { returns(T.nilable(T.anything)) }
        attr_reader :_links

        sig { params(_links: T.anything).void }
        attr_writer :_links

        sig do
          params(
            _embedded:
              Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded::OrHash,
            _links: T.anything
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded,
              _links: T.anything
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded::Tag
                ]
              )
            )
          end
          attr_reader :tags

          sig do
            params(
              tags:
                T::Array[
                  Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded::Tag::OrHash
                ]
            ).void
          end
          attr_writer :tags

          sig do
            params(
              tags:
                T::Array[
                  Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded::Tag::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(tags: nil)
          end

          sig do
            override.returns(
              {
                tags:
                  T::Array[
                    Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded::Tag
                  ]
              }
            )
          end
          def to_hash
          end

          class Tag < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::V4TagsCreateResponse::TagCreateResponse::Embedded::Tag,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :color

            sig { params(color: String).void }
            attr_writer :color

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_reader :request_id

            sig { params(request_id: String).void }
            attr_writer :request_id

            sig do
              params(
                id: Integer,
                color: String,
                name: String,
                request_id: String
              ).returns(T.attached_class)
            end
            def self.new(id: nil, color: nil, name: nil, request_id: nil)
            end

            sig do
              override.returns(
                { id: Integer, color: String, name: String, request_id: String }
              )
            end
            def to_hash
            end
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::V4TagsCreateResponse::Problem,
              Amocrm::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :detail

        sig { params(detail: String).void }
        attr_writer :detail

        sig { returns(T.nilable(Integer)) }
        attr_reader :status

        sig { params(status: Integer).void }
        attr_writer :status

        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig do
          params(
            detail: String,
            status: Integer,
            title: String,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(detail: nil, status: nil, title: nil, type: nil)
        end

        sig do
          override.returns(
            { detail: String, status: Integer, title: String, type: String }
          )
        end
        def to_hash
        end
      end

      sig do
        override.returns(
          T::Array[Amocrm::Models::V4TagsCreateResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
