# typed: strong

module Amocrm
  module Models
    module APISalesbotRunResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APISalesbotRunResponse::SalesbotRunResponse,
            Amocrm::Models::APISalesbotRunResponse::Problem
          )
        end

      class SalesbotRunResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APISalesbotRunResponse::SalesbotRunResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APISalesbotRunResponse::SalesbotRunResponse::Links
            )
          )
        end
        attr_reader :_links

        sig do
          params(
            _links:
              Amocrm::Models::APISalesbotRunResponse::SalesbotRunResponse::Links::OrHash
          ).void
        end
        attr_writer :_links

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :success

        sig { params(success: T::Boolean).void }
        attr_writer :success

        sig do
          params(
            _links:
              Amocrm::Models::APISalesbotRunResponse::SalesbotRunResponse::Links::OrHash,
            success: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(_links: nil, success: nil)
        end

        sig do
          override.returns(
            {
              _links:
                Amocrm::Models::APISalesbotRunResponse::SalesbotRunResponse::Links,
              success: T::Boolean
            }
          )
        end
        def to_hash
        end

        class Links < Amocrm::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Amocrm::Models::APISalesbotRunResponse::SalesbotRunResponse::Links,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Amocrm::Models::APISalesbotRunResponse::SalesbotRunResponse::Links::Self
              )
            )
          end
          attr_reader :self_

          sig do
            params(
              self_:
                Amocrm::Models::APISalesbotRunResponse::SalesbotRunResponse::Links::Self::OrHash
            ).void
          end
          attr_writer :self_

          sig do
            params(
              self_:
                Amocrm::Models::APISalesbotRunResponse::SalesbotRunResponse::Links::Self::OrHash
            ).returns(T.attached_class)
          end
          def self.new(self_: nil)
          end

          sig do
            override.returns(
              {
                self_:
                  Amocrm::Models::APISalesbotRunResponse::SalesbotRunResponse::Links::Self
              }
            )
          end
          def to_hash
          end

          class Self < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APISalesbotRunResponse::SalesbotRunResponse::Links::Self,
                  Amocrm::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :href

            sig { params(href: String).void }
            attr_writer :href

            sig { returns(T.nilable(String)) }
            attr_reader :method_

            sig { params(method_: String).void }
            attr_writer :method_

            sig do
              params(href: String, method_: String).returns(T.attached_class)
            end
            def self.new(href: nil, method_: nil)
            end

            sig { override.returns({ href: String, method_: String }) }
            def to_hash
            end
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APISalesbotRunResponse::Problem,
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
          T::Array[Amocrm::Models::APISalesbotRunResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
