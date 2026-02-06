# typed: strong

module Amocrm
  module Models
    module V4LeadsUpdateByIDResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::V4LeadsUpdateByIDResponse::LeadUpdateResponse,
            Amocrm::Models::V4LeadsUpdateByIDResponse::Problem
          )
        end

      class LeadUpdateResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::V4LeadsUpdateByIDResponse::LeadUpdateResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::V4LeadsUpdateByIDResponse::LeadUpdateResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::V4LeadsUpdateByIDResponse::LeadUpdateResponse::Embedded::OrHash
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
              Amocrm::Models::V4LeadsUpdateByIDResponse::LeadUpdateResponse::Embedded::OrHash,
            _links: T.anything
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::V4LeadsUpdateByIDResponse::LeadUpdateResponse::Embedded,
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
                Amocrm::Models::V4LeadsUpdateByIDResponse::LeadUpdateResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::V4LeadsUpdateByIDResponse::LeadUpdateResponse::Embedded::Lead
                ]
              )
            )
          end
          attr_reader :leads

          sig do
            params(
              leads:
                T::Array[
                  Amocrm::Models::V4LeadsUpdateByIDResponse::LeadUpdateResponse::Embedded::Lead::OrHash
                ]
            ).void
          end
          attr_writer :leads

          sig do
            params(
              leads:
                T::Array[
                  Amocrm::Models::V4LeadsUpdateByIDResponse::LeadUpdateResponse::Embedded::Lead::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(leads: nil)
          end

          sig do
            override.returns(
              {
                leads:
                  T::Array[
                    Amocrm::Models::V4LeadsUpdateByIDResponse::LeadUpdateResponse::Embedded::Lead
                  ]
              }
            )
          end
          def to_hash
          end

          class Lead < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::V4LeadsUpdateByIDResponse::LeadUpdateResponse::Embedded::Lead,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(T.anything)) }
            attr_reader :_links

            sig { params(_links: T.anything).void }
            attr_writer :_links

            sig { returns(T.nilable(Integer)) }
            attr_reader :updated_at

            sig { params(updated_at: Integer).void }
            attr_writer :updated_at

            sig do
              params(
                id: Integer,
                _links: T.anything,
                updated_at: Integer
              ).returns(T.attached_class)
            end
            def self.new(id: nil, _links: nil, updated_at: nil)
            end

            sig do
              override.returns(
                { id: Integer, _links: T.anything, updated_at: Integer }
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
              Amocrm::Models::V4LeadsUpdateByIDResponse::Problem,
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
          T::Array[Amocrm::Models::V4LeadsUpdateByIDResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
