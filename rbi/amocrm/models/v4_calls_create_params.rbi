# typed: strong

module Amocrm
  module Models
    class V4CallsCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Amocrm::V4CallsCreateParams, Amocrm::Internal::AnyHash)
        end

      sig { returns(T::Array[Amocrm::V4CallsCreateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[Amocrm::V4CallsCreateParams::Body::OrHash],
          request_options: Amocrm::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Amocrm::V4CallsCreateParams::Body],
            request_options: Amocrm::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Amocrm::V4CallsCreateParams::Body, Amocrm::Internal::AnyHash)
          end

        sig do
          returns(
            T.any(
              Amocrm::V4CallsCreateParams::Body::Direction::OrSymbol,
              String
            )
          )
        end
        attr_accessor :direction

        sig { returns(Integer) }
        attr_accessor :duration

        sig { returns(String) }
        attr_accessor :phone

        sig { returns(String) }
        attr_accessor :source

        sig do
          returns(
            T.nilable(
              Amocrm::V4CallsCreateParams::Body::CallResponsible::Variants
            )
          )
        end
        attr_accessor :call_responsible

        sig { returns(T.nilable(String)) }
        attr_reader :call_result

        sig { params(call_result: String).void }
        attr_writer :call_result

        sig { returns(T.nilable(Integer)) }
        attr_reader :call_status

        sig { params(call_status: Integer).void }
        attr_writer :call_status

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_at

        sig { params(created_at: Integer).void }
        attr_writer :created_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_by

        sig { params(created_by: Integer).void }
        attr_writer :created_by

        sig { returns(T.nilable(String)) }
        attr_reader :link

        sig { params(link: String).void }
        attr_writer :link

        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :responsible_user_id

        sig { params(responsible_user_id: Integer).void }
        attr_writer :responsible_user_id

        sig { returns(T.nilable(String)) }
        attr_reader :uniq

        sig { params(uniq: String).void }
        attr_writer :uniq

        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_at

        sig { params(updated_at: Integer).void }
        attr_writer :updated_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_by

        sig { params(updated_by: Integer).void }
        attr_writer :updated_by

        sig do
          params(
            direction:
              T.any(
                Amocrm::V4CallsCreateParams::Body::Direction::OrSymbol,
                String
              ),
            duration: Integer,
            phone: String,
            source: String,
            call_responsible:
              T.nilable(
                Amocrm::V4CallsCreateParams::Body::CallResponsible::Variants
              ),
            call_result: String,
            call_status: Integer,
            created_at: Integer,
            created_by: Integer,
            link: String,
            request_id: String,
            responsible_user_id: Integer,
            uniq: String,
            updated_at: Integer,
            updated_by: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          direction:,
          duration:,
          phone:,
          source:,
          call_responsible: nil,
          call_result: nil,
          call_status: nil,
          created_at: nil,
          created_by: nil,
          link: nil,
          request_id: nil,
          responsible_user_id: nil,
          uniq: nil,
          updated_at: nil,
          updated_by: nil
        )
        end

        sig do
          override.returns(
            {
              direction:
                T.any(
                  Amocrm::V4CallsCreateParams::Body::Direction::OrSymbol,
                  String
                ),
              duration: Integer,
              phone: String,
              source: String,
              call_responsible:
                T.nilable(
                  Amocrm::V4CallsCreateParams::Body::CallResponsible::Variants
                ),
              call_result: String,
              call_status: Integer,
              created_at: Integer,
              created_by: Integer,
              link: String,
              request_id: String,
              responsible_user_id: Integer,
              uniq: String,
              updated_at: Integer,
              updated_by: Integer
            }
          )
        end
        def to_hash
        end

        module Direction
          extend Amocrm::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Amocrm::V4CallsCreateParams::Body::Direction::TaggedSymbol,
                String
              )
            end

          sig do
            override.returns(
              T::Array[Amocrm::V4CallsCreateParams::Body::Direction::Variants]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Amocrm::V4CallsCreateParams::Body::Direction)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INBOUND =
            T.let(
              :inbound,
              Amocrm::V4CallsCreateParams::Body::Direction::TaggedSymbol
            )
          OUTBOUND =
            T.let(
              :outbound,
              Amocrm::V4CallsCreateParams::Body::Direction::TaggedSymbol
            )
        end

        module CallResponsible
          extend Amocrm::Internal::Type::Union

          Variants = T.type_alias { T.any(String, Integer) }

          sig do
            override.returns(
              T::Array[
                Amocrm::V4CallsCreateParams::Body::CallResponsible::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
