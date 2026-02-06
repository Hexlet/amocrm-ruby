# typed: strong

module Amocrm
  module Models
    module APICustomFieldGroupsCreateResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APICustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse,
            Amocrm::Models::APICustomFieldGroupsCreateResponse::Problem
          )
        end

      class CustomFieldGroupCreateResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APICustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APICustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APICustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse::Embedded::OrHash
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
              Amocrm::Models::APICustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse::Embedded::OrHash,
            _links: T.anything
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::APICustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse::Embedded,
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
                Amocrm::Models::APICustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APICustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse::Embedded::Group
                ]
              )
            )
          end
          attr_reader :groups

          sig do
            params(
              groups:
                T::Array[
                  Amocrm::Models::APICustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse::Embedded::Group::OrHash
                ]
            ).void
          end
          attr_writer :groups

          sig do
            params(
              groups:
                T::Array[
                  Amocrm::Models::APICustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse::Embedded::Group::OrHash
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
                    Amocrm::Models::APICustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse::Embedded::Group
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
                  Amocrm::Models::APICustomFieldGroupsCreateResponse::CustomFieldGroupCreateResponse::Embedded::Group,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_reader :request_id

            sig { params(request_id: String).void }
            attr_writer :request_id

            sig do
              params(id: Integer, name: String, request_id: String).returns(
                T.attached_class
              )
            end
            def self.new(id: nil, name: nil, request_id: nil)
            end

            sig do
              override.returns(
                { id: Integer, name: String, request_id: String }
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
              Amocrm::Models::APICustomFieldGroupsCreateResponse::Problem,
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
          T::Array[Amocrm::Models::APICustomFieldGroupsCreateResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
