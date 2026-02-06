# typed: strong

module Amocrm
  module Models
    module APIEntityNotesByParentUpdateByParentResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::NoteCreateResponse,
            Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::Problem
          )
        end

      class NoteCreateResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::NoteCreateResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::NoteCreateResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::NoteCreateResponse::Embedded::OrHash
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
              Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::NoteCreateResponse::Embedded::OrHash,
            _links: T.anything
          ).returns(T.attached_class)
        end
        def self.new(_embedded: nil, _links: nil)
        end

        sig do
          override.returns(
            {
              _embedded:
                Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::NoteCreateResponse::Embedded,
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
                Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::NoteCreateResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::NoteCreateResponse::Embedded::Note
                ]
              )
            )
          end
          attr_reader :notes

          sig do
            params(
              notes:
                T::Array[
                  Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::NoteCreateResponse::Embedded::Note::OrHash
                ]
            ).void
          end
          attr_writer :notes

          sig do
            params(
              notes:
                T::Array[
                  Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::NoteCreateResponse::Embedded::Note::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(notes: nil)
          end

          sig do
            override.returns(
              {
                notes:
                  T::Array[
                    Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::NoteCreateResponse::Embedded::Note
                  ]
              }
            )
          end
          def to_hash
          end

          class Note < Amocrm::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::NoteCreateResponse::Embedded::Note,
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
            attr_reader :entity_id

            sig { params(entity_id: Integer).void }
            attr_writer :entity_id

            sig { returns(T.nilable(String)) }
            attr_reader :request_id

            sig { params(request_id: String).void }
            attr_writer :request_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :updated_at

            sig { params(updated_at: Integer).void }
            attr_writer :updated_at

            sig do
              params(
                id: Integer,
                _links: T.anything,
                entity_id: Integer,
                request_id: String,
                updated_at: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              _links: nil,
              entity_id: nil,
              request_id: nil,
              updated_at: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  _links: T.anything,
                  entity_id: Integer,
                  request_id: String,
                  updated_at: Integer
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
              Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::Problem,
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
            Amocrm::Models::APIEntityNotesByParentUpdateByParentResponse::Variants
          ]
        )
      end
      def self.variants
      end
    end
  end
end
