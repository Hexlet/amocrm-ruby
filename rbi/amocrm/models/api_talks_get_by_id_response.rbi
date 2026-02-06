# typed: strong

module Amocrm
  module Models
    module APITalksGetByIDResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APITalksGetByIDResponse::Talk,
            Amocrm::Models::APITalksGetByIDResponse::Problem
          )
        end

      class Talk < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APITalksGetByIDResponse::Talk,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded)
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig { returns(T.nilable(T.anything)) }
        attr_reader :_links

        sig { params(_links: T.anything).void }
        attr_writer :_links

        sig { returns(T.nilable(Integer)) }
        attr_reader :account_id

        sig { params(account_id: Integer).void }
        attr_writer :account_id

        sig { returns(T.nilable(String)) }
        attr_reader :chat_id

        sig { params(chat_id: String).void }
        attr_writer :chat_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :contact_id

        sig { params(contact_id: Integer).void }
        attr_writer :contact_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_at

        sig { params(created_at: Integer).void }
        attr_writer :created_at

        sig { returns(T.nilable(Integer)) }
        attr_accessor :entity_id

        sig { returns(T.nilable(String)) }
        attr_accessor :entity_type

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_in_work

        sig { params(is_in_work: T::Boolean).void }
        attr_writer :is_in_work

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_read

        sig { params(is_read: T::Boolean).void }
        attr_writer :is_read

        sig { returns(T.nilable(Integer)) }
        attr_accessor :missed_at

        sig { returns(T.nilable(String)) }
        attr_reader :origin

        sig { params(origin: String).void }
        attr_writer :origin

        sig { returns(T.nilable(Integer)) }
        attr_reader :rate

        sig { params(rate: Integer).void }
        attr_writer :rate

        sig { returns(T.nilable(Integer)) }
        attr_reader :talk_id

        sig { params(talk_id: Integer).void }
        attr_writer :talk_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_at

        sig { params(updated_at: Integer).void }
        attr_writer :updated_at

        sig do
          params(
            _embedded:
              Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::OrHash,
            _links: T.anything,
            account_id: Integer,
            chat_id: String,
            contact_id: Integer,
            created_at: Integer,
            entity_id: T.nilable(Integer),
            entity_type: T.nilable(String),
            is_in_work: T::Boolean,
            is_read: T::Boolean,
            missed_at: T.nilable(Integer),
            origin: String,
            rate: Integer,
            talk_id: Integer,
            updated_at: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          _embedded: nil,
          _links: nil,
          account_id: nil,
          chat_id: nil,
          contact_id: nil,
          created_at: nil,
          entity_id: nil,
          entity_type: nil,
          is_in_work: nil,
          is_read: nil,
          missed_at: nil,
          origin: nil,
          rate: nil,
          talk_id: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded,
              _links: T.anything,
              account_id: Integer,
              chat_id: String,
              contact_id: Integer,
              created_at: Integer,
              entity_id: T.nilable(Integer),
              entity_type: T.nilable(String),
              is_in_work: T::Boolean,
              is_read: T::Boolean,
              missed_at: T.nilable(Integer),
              origin: String,
              rate: Integer,
              talk_id: Integer,
              updated_at: Integer
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::Contact
                ]
              )
            )
          end
          attr_reader :contacts

          sig do
            params(
              contacts:
                T::Array[
                  Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::Contact::OrHash
                ]
            ).void
          end
          attr_writer :contacts

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::Customer
                ]
              )
            )
          end
          attr_reader :customers

          sig do
            params(
              customers:
                T::Array[
                  Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::Customer::OrHash
                ]
            ).void
          end
          attr_writer :customers

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::Lead
                ]
              )
            )
          end
          attr_reader :leads

          sig do
            params(
              leads:
                T::Array[
                  Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::Lead::OrHash
                ]
            ).void
          end
          attr_writer :leads

          sig do
            params(
              contacts:
                T::Array[
                  Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::Contact::OrHash
                ],
              customers:
                T::Array[
                  Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::Customer::OrHash
                ],
              leads:
                T::Array[
                  Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::Lead::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(contacts: nil, customers: nil, leads: nil)
          end

          sig do
            override.returns(
              {
                contacts:
                  T::Array[
                    Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::Contact
                  ],
                customers:
                  T::Array[
                    Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::Customer
                  ],
                leads:
                  T::Array[
                    Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::Lead
                  ]
              }
            )
          end
          def to_hash
          end

          class Contact < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::Contact,
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

          class Customer < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::Customer,
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
                  Amocrm::Models::APITalksGetByIDResponse::Talk::Embedded::Lead,
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
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APITalksGetByIDResponse::Problem,
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
          T::Array[Amocrm::Models::APITalksGetByIDResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
