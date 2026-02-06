# typed: strong

module Amocrm
  module Models
    module APICustomFieldsListResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APICustomFieldsListResponse::CustomFieldListResponse,
            Amocrm::Models::APICustomFieldsListResponse::Problem
          )
        end

      class CustomFieldListResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APICustomFieldsListResponse::CustomFieldListResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APICustomFieldsListResponse::CustomFieldListResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APICustomFieldsListResponse::CustomFieldListResponse::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig { returns(T.nilable(T.anything)) }
        attr_reader :_links

        sig { params(_links: T.anything).void }
        attr_writer :_links

        sig { returns(T.nilable(Integer)) }
        attr_reader :_page

        sig { params(_page: Integer).void }
        attr_writer :_page

        sig do
          params(
            _embedded:
              Amocrm::Models::APICustomFieldsListResponse::CustomFieldListResponse::Embedded::OrHash,
            _links: T.anything,
            _page: Integer
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil, _page: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::APICustomFieldsListResponse::CustomFieldListResponse::Embedded,
              _links: T.anything,
              _page: Integer
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::APICustomFieldsListResponse::CustomFieldListResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APICustomFieldsListResponse::CustomFieldListResponse::Embedded::CustomField
                ]
              )
            )
          end
          attr_reader :custom_fields

          sig do
            params(
              custom_fields:
                T::Array[
                  Amocrm::Models::APICustomFieldsListResponse::CustomFieldListResponse::Embedded::CustomField::OrHash
                ]
            ).void
          end
          attr_writer :custom_fields

          sig do
            params(
              custom_fields:
                T::Array[
                  Amocrm::Models::APICustomFieldsListResponse::CustomFieldListResponse::Embedded::CustomField::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(custom_fields: nil)
          end

          sig do
            override.returns(
              {
                custom_fields:
                  T::Array[
                    Amocrm::Models::APICustomFieldsListResponse::CustomFieldListResponse::Embedded::CustomField
                  ]
              }
            )
          end
          def to_hash
          end

          class CustomField < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APICustomFieldsListResponse::CustomFieldListResponse::Embedded::CustomField,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :code

            sig { params(code: String).void }
            attr_writer :code

            sig { returns(T.nilable(String)) }
            attr_reader :entity_type

            sig { params(entity_type: String).void }
            attr_writer :entity_type

            sig { returns(T.nilable(T::Array[T.anything])) }
            attr_reader :enums

            sig { params(enums: T::Array[T.anything]).void }
            attr_writer :enums

            sig { returns(T.nilable(Integer)) }
            attr_reader :group_id

            sig { params(group_id: Integer).void }
            attr_writer :group_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_deletable

            sig { params(is_deletable: T::Boolean).void }
            attr_writer :is_deletable

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_multiple

            sig { params(is_multiple: T::Boolean).void }
            attr_writer :is_multiple

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_required

            sig { params(is_required: T::Boolean).void }
            attr_writer :is_required

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_visible

            sig { params(is_visible: T::Boolean).void }
            attr_writer :is_visible

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(T.anything)) }
            attr_reader :settings

            sig { params(settings: T.anything).void }
            attr_writer :settings

            sig { returns(T.nilable(Integer)) }
            attr_reader :sort

            sig { params(sort: Integer).void }
            attr_writer :sort

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig do
              params(
                id: Integer,
                code: String,
                entity_type: String,
                enums: T::Array[T.anything],
                group_id: Integer,
                is_deletable: T::Boolean,
                is_multiple: T::Boolean,
                is_required: T::Boolean,
                is_visible: T::Boolean,
                name: String,
                settings: T.anything,
                sort: Integer,
                type: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              code: nil,
              entity_type: nil,
              enums: nil,
              group_id: nil,
              is_deletable: nil,
              is_multiple: nil,
              is_required: nil,
              is_visible: nil,
              name: nil,
              settings: nil,
              sort: nil,
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  code: String,
                  entity_type: String,
                  enums: T::Array[T.anything],
                  group_id: Integer,
                  is_deletable: T::Boolean,
                  is_multiple: T::Boolean,
                  is_required: T::Boolean,
                  is_visible: T::Boolean,
                  name: String,
                  settings: T.anything,
                  sort: Integer,
                  type: String
                }
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
              Amocrm::Models::APICustomFieldsListResponse::Problem,
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
          T::Array[Amocrm::Models::APICustomFieldsListResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
