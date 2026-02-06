# typed: strong

module Amocrm
  module Models
    module APICustomFieldGroupsListResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse,
            Amocrm::Models::APICustomFieldGroupsListResponse::Problem
          )
        end

      class CustomFieldGroupListResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded::OrHash
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
              Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded::OrHash,
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
                Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded,
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
                Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded::Group
                ]
              )
            )
          end
          attr_reader :groups

          sig do
            params(
              groups:
                T::Array[
                  Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded::Group::OrHash
                ]
            ).void
          end
          attr_writer :groups

          sig do
            params(
              groups:
                T::Array[
                  Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded::Group::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(groups: nil)
          end

          sig do
            override.returns(
              {
                groups:
                  T::Array[
                    Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded::Group
                  ]
              }
            )
          end
          def to_hash
          end

          class Group < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APICustomFieldGroupsListResponse::CustomFieldGroupListResponse::Embedded::Group,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_predefined

            sig { params(is_predefined: T::Boolean).void }
            attr_writer :is_predefined

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
                id: Integer,
                is_predefined: T::Boolean,
                name: String,
                sort: Integer
              ).returns(T.attached_class)
            end
            def self.new(id: nil, is_predefined: nil, name: nil, sort: nil)
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  is_predefined: T::Boolean,
                  name: String,
                  sort: Integer
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
              Amocrm::Models::APICustomFieldGroupsListResponse::Problem,
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
          T::Array[Amocrm::Models::APICustomFieldGroupsListResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
