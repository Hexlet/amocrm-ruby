# typed: strong

module Amocrm
  module Models
    module V4EntityNotesByParentListByParentResponse
      extend Amocrm::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Amocrm::Models::V4EntityNotesByParentListByParentResponse::NoteListResponse,
            Amocrm::Models::V4EntityNotesByParentListByParentResponse::Problem
          )
        end

      class NoteListResponse < Amocrm::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Amocrm::Models::V4EntityNotesByParentListByParentResponse::NoteListResponse,
              Amocrm::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Amocrm::Models::V4EntityNotesByParentListByParentResponse::NoteListResponse::Embedded
            )
          )
        end
        attr_reader :_embedded

        sig do
          params(
            _embedded:
              Amocrm::Models::V4EntityNotesByParentListByParentResponse::NoteListResponse::Embedded::OrHash
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
              Amocrm::Models::V4EntityNotesByParentListByParentResponse::NoteListResponse::Embedded::OrHash,
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
                Amocrm::Models::V4EntityNotesByParentListByParentResponse::NoteListResponse::Embedded,
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
                Amocrm::Models::V4EntityNotesByParentListByParentResponse::NoteListResponse::Embedded,
                Amocrm::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Amocrm::Models::V4EntityNotesByParentListByParentResponse::NoteListResponse::Embedded::Note
                ]
              )
            )
          end
          attr_reader :notes

          sig do
            params(
              notes:
                T::Array[
                  Amocrm::Models::V4EntityNotesByParentListByParentResponse::NoteListResponse::Embedded::Note::OrHash
                ]
            ).void
          end
          attr_writer :notes

          sig do
            params(
              notes:
                T::Array[
                  Amocrm::Models::V4EntityNotesByParentListByParentResponse::NoteListResponse::Embedded::Note::OrHash
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
                    Amocrm::Models::V4EntityNotesByParentListByParentResponse::NoteListResponse::Embedded::Note
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
                  Amocrm::Models::V4EntityNotesByParentListByParentResponse::NoteListResponse::Embedded::Note,
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
            attr_reader :account_id

            sig { params(account_id: Integer).void }
            attr_writer :account_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :created_at

            sig { params(created_at: Integer).void }
            attr_writer :created_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :created_by

            sig { params(created_by: Integer).void }
            attr_writer :created_by

            sig { returns(T.nilable(Integer)) }
            attr_reader :entity_id

            sig { params(entity_id: Integer).void }
            attr_writer :entity_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :group_id

            sig { params(group_id: Integer).void }
            attr_writer :group_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_pinned

            sig { params(is_pinned: T::Boolean).void }
            attr_writer :is_pinned

            sig { returns(T.nilable(String)) }
            attr_reader :note_type

            sig { params(note_type: String).void }
            attr_writer :note_type

            sig { returns(T.nilable(T.anything)) }
            attr_reader :params

            sig { params(params: T.anything).void }
            attr_writer :params

            sig { returns(T.nilable(Integer)) }
            attr_reader :responsible_user_id

            sig { params(responsible_user_id: Integer).void }
            attr_writer :responsible_user_id

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
                id: Integer,
                _links: T.anything,
                account_id: Integer,
                created_at: Integer,
                created_by: Integer,
                entity_id: Integer,
                group_id: Integer,
                is_pinned: T::Boolean,
                note_type: String,
                params: T.anything,
                responsible_user_id: Integer,
                updated_at: Integer,
                updated_by: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              _links: nil,
              account_id: nil,
              created_at: nil,
              created_by: nil,
              entity_id: nil,
              group_id: nil,
              is_pinned: nil,
              note_type: nil,
              params: nil,
              responsible_user_id: nil,
              updated_at: nil,
              updated_by: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  _links: T.anything,
                  account_id: Integer,
                  created_at: Integer,
                  created_by: Integer,
                  entity_id: Integer,
                  group_id: Integer,
                  is_pinned: T::Boolean,
                  note_type: String,
                  params: T.anything,
                  responsible_user_id: Integer,
                  updated_at: Integer,
                  updated_by: Integer
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
              Amocrm::Models::V4EntityNotesByParentListByParentResponse::Problem,
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
            Amocrm::Models::V4EntityNotesByParentListByParentResponse::Variants
          ]
        )
      end
      def self.variants
      end
    end
  end
end
