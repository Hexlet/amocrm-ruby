# typed: strong

module Amocrm
  module Models
    module APILeadsCreateComplexResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse,
            Amocrm::Models::APILeadsCreateComplexResponse::Problem
          )
        end

      class LeadComplexCreateResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded::OrHash
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
              Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded::OrHash,
            _links: T.anything
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded,
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
                Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded::Lead
                ]
              )
            )
          end
          attr_reader :leads

          sig do
            params(
              leads:
                T::Array[
                  Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded::Lead::OrHash
                ]
            ).void
          end
          attr_writer :leads

          sig do
            params(
              leads:
                T::Array[
                  Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded::Lead::OrHash
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
                    Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded::Lead
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
                  Amocrm::Models::APILeadsCreateComplexResponse::LeadComplexCreateResponse::Embedded::Lead,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(Integer)) }
            attr_reader :company_id

            sig { params(company_id: Integer).void }
            attr_writer :company_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :contact_id

            sig { params(contact_id: Integer).void }
            attr_writer :contact_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :merged

            sig { params(merged: T::Boolean).void }
            attr_writer :merged

            sig { returns(T.nilable(String)) }
            attr_reader :request_id

            sig { params(request_id: String).void }
            attr_writer :request_id

            sig do
              params(
                id: Integer,
                company_id: Integer,
                contact_id: Integer,
                merged: T::Boolean,
                request_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              company_id: nil,
              contact_id: nil,
              merged: nil,
              request_id: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  company_id: Integer,
                  contact_id: Integer,
                  merged: T::Boolean,
                  request_id: String
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
              Amocrm::Models::APILeadsCreateComplexResponse::Problem,
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
          T::Array[Amocrm::Models::APILeadsCreateComplexResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
