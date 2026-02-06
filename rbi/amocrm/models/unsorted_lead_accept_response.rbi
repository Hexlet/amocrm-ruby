# typed: strong

module Amocrm
  module Models
    module UnsortedLeadAcceptResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse,
            Amocrm::Models::UnsortedLeadAcceptResponse::Problem
          )
        end

      class UnsortedAcceptResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig do
          returns(
            T.nilable(
              Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Category::TaggedSymbol
            )
          )
        end
        attr_reader :category

        sig do
          params(
            category:
              Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Category::OrSymbol
          ).void
        end
        attr_writer :category

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_at

        sig { params(created_at: Integer).void }
        attr_writer :created_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :pipeline_id

        sig { params(pipeline_id: Integer).void }
        attr_writer :pipeline_id

        sig { returns(T.nilable(String)) }
        attr_reader :uid

        sig { params(uid: String).void }
        attr_writer :uid

        sig do
          params(
            _embedded:
              Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::OrHash,
            category:
              Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Category::OrSymbol,
            created_at: Integer,
            pipeline_id: Integer,
            uid: String
          ).returns(T.attached_class)
        end
        def self.new(
          _embedded: nil,
          category: nil,
          created_at: nil,
          pipeline_id: nil,
          uid: nil
        )
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded,
              category:
                Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Category::TaggedSymbol,
              created_at: Integer,
              pipeline_id: Integer,
              uid: String
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::Company
                ]
              )
            )
          end
          attr_reader :companies

          sig do
            params(
              companies:
                T::Array[
                  Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::Company::OrHash
                ]
            ).void
          end
          attr_writer :companies

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::Contact
                ]
              )
            )
          end
          attr_reader :contacts

          sig do
            params(
              contacts:
                T::Array[
                  Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::Contact::OrHash
                ]
            ).void
          end
          attr_writer :contacts

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::Lead
                ]
              )
            )
          end
          attr_reader :leads

          sig do
            params(
              leads:
                T::Array[
                  Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::Lead::OrHash
                ]
            ).void
          end
          attr_writer :leads

          sig do
            params(
              companies:
                T::Array[
                  Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::Company::OrHash
                ],
              contacts:
                T::Array[
                  Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::Contact::OrHash
                ],
              leads:
                T::Array[
                  Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::Lead::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(companies: nil, contacts: nil, leads: nil)
          end

          sig do
            override.returns(
              {
                companies:
                  T::Array[
                    Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::Company
                  ],
                contacts:
                  T::Array[
                    Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::Contact
                  ],
                leads:
                  T::Array[
                    Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::Lead
                  ]
              }
            )
          end
          def to_hash
          end

          class Company < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::Company,
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

            sig do
              params(id: Integer, _links: T.anything).returns(T.attached_class)
            end
            def self.new(id: nil, _links: nil)
            end

            sig { override.returns({ id: Integer, _links: T.anything }) }
            def to_hash
            end
          end

          class Contact < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::Contact,
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

            sig do
              params(id: Integer, _links: T.anything).returns(T.attached_class)
            end
            def self.new(id: nil, _links: nil)
            end

            sig { override.returns({ id: Integer, _links: T.anything }) }
            def to_hash
            end
          end

          class Lead < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Embedded::Lead,
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

            sig do
              params(id: Integer, _links: T.anything).returns(T.attached_class)
            end
            def self.new(id: nil, _links: nil)
            end

            sig { override.returns({ id: Integer, _links: T.anything }) }
            def to_hash
            end
          end
        end

        module Category
          extend Amocrm::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SIP =
            T.let(
              :sip,
              Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Category::TaggedSymbol
            )
          MAIL =
            T.let(
              :mail,
              Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Category::TaggedSymbol
            )
          CHATS =
            T.let(
              :chats,
              Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Category::TaggedSymbol
            )
          FORMS =
            T.let(
              :forms,
              Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Amocrm::Models::UnsortedLeadAcceptResponse::UnsortedAcceptResponse::Category::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::UnsortedLeadAcceptResponse::Problem,
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
          T::Array[Amocrm::Models::UnsortedLeadAcceptResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
