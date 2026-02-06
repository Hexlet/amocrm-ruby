# typed: strong

module Amocrm
  module Models
    module APIUnsortedLeadsCreateFormsResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse,
            Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::Problem
          )
        end

      class UnsortedCreateResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::OrHash
          ).void
        end
        attr_writer :_embedded

        sig { returns(T.nilable(Integer)) }
        attr_reader :_total_items

        sig { params(_total_items: Integer).void }
        attr_writer :_total_items

        sig do
          params(
            _embedded:
              Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::OrHash,
            _total_items: Integer
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _total_items: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded,
              _total_items: Integer
            }
          )
        end
        def to_hash
        end

        class Embedded < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted
                ]
              )
            )
          end
          attr_reader :unsorted

          sig do
            params(
              unsorted:
                T::Array[
                  Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::OrHash
                ]
            ).void
          end
          attr_writer :unsorted

          sig do
            params(
              unsorted:
                T::Array[
                  Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(unsorted: nil)
          end

          sig do
            override.returns(
              {
                unsorted:
                  T::Array[
                    Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted
                  ]
              }
            )
          end
          def to_hash
          end

          class Unsorted < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted,
                  Amocrm::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded
                )
              )
            end
            attr_reader :_embedded

            sig do
              params(
                _embedded:
                  Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::OrHash
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

            # Echoed request id
            sig { returns(T.nilable(String)) }
            attr_reader :request_id

            sig { params(request_id: String).void }
            attr_writer :request_id

            sig { returns(T.nilable(String)) }
            attr_reader :uid

            sig { params(uid: String).void }
            attr_writer :uid

            sig do
              params(
                _embedded:
                  Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::OrHash,
                _links: T.anything,
                account_id: Integer,
                request_id: String,
                uid: String
              ).returns(T.attached_class)
            end
            def self.new(
              _embedded: nil,
              _links: nil,
              account_id: nil,
              # Echoed request id
              request_id: nil,
              uid: nil
            )
            end

            sig do
              override.returns(
                {
                  _embedded:
                    Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded,
                  _links: T.anything,
                  account_id: Integer,
                  request_id: String,
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
                    Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded,
                    Amocrm::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Company
                    ]
                  )
                )
              end
              attr_reader :companies

              sig do
                params(
                  companies:
                    T::Array[
                      Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Company::OrHash
                    ]
                ).void
              end
              attr_writer :companies

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Contact
                    ]
                  )
                )
              end
              attr_reader :contacts

              sig do
                params(
                  contacts:
                    T::Array[
                      Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Contact::OrHash
                    ]
                ).void
              end
              attr_writer :contacts

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Lead
                    ]
                  )
                )
              end
              attr_reader :leads

              sig do
                params(
                  leads:
                    T::Array[
                      Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Lead::OrHash
                    ]
                ).void
              end
              attr_writer :leads

              sig do
                params(
                  companies:
                    T::Array[
                      Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Company::OrHash
                    ],
                  contacts:
                    T::Array[
                      Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Contact::OrHash
                    ],
                  leads:
                    T::Array[
                      Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Lead::OrHash
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
                        Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Company
                      ],
                    contacts:
                      T::Array[
                        Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Contact
                      ],
                    leads:
                      T::Array[
                        Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Lead
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
                      Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Company,
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
                  params(id: Integer, _links: T.anything).returns(
                    T.attached_class
                  )
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
                      Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Contact,
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
                  params(id: Integer, _links: T.anything).returns(
                    T.attached_class
                  )
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
                      Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::UnsortedCreateResponse::Embedded::Unsorted::Embedded::Lead,
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
                  params(id: Integer, _links: T.anything).returns(
                    T.attached_class
                  )
                end
                def self.new(id: nil, _links: nil)
                end

                sig { override.returns({ id: Integer, _links: T.anything }) }
                def to_hash
                end
              end
            end
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::Problem,
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
          T::Array[
            Amocrm::Models::APIUnsortedLeadsCreateFormsResponse::Variants
          ]
        )
      end
      def self.variants
      end
    end
  end
end
