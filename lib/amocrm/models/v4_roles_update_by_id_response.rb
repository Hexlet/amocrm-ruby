# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#roles_update_by_id
    module V4RolesUpdateByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4RolesUpdateByIDResponse::Role }

      variant -> { Amocrm::Models::V4RolesUpdateByIDResponse::Problem }

      class Role < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::V4RolesUpdateByIDResponse::Role::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::V4RolesUpdateByIDResponse::Role::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute rights
        #
        #   @return [Amocrm::Models::V4RolesUpdateByIDResponse::Role::Rights, nil]
        optional :rights, -> { Amocrm::Models::V4RolesUpdateByIDResponse::Role::Rights }

        # @!method initialize(id: nil, _embedded: nil, _links: nil, name: nil, rights: nil)
        #   @param id [Integer]
        #   @param _embedded [Amocrm::Models::V4RolesUpdateByIDResponse::Role::Embedded]
        #   @param _links [Object]
        #   @param name [String]
        #   @param rights [Amocrm::Models::V4RolesUpdateByIDResponse::Role::Rights]

        # @see Amocrm::Models::V4RolesUpdateByIDResponse::Role#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute users
          #
          #   @return [Array<Amocrm::Models::V4RolesUpdateByIDResponse::Role::Embedded::User>, nil]
          optional :users,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4RolesUpdateByIDResponse::Role::Embedded::User] }

          # @!method initialize(users: nil)
          #   @param users [Array<Amocrm::Models::V4RolesUpdateByIDResponse::Role::Embedded::User>]

          class User < Amocrm::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!method initialize(id: nil)
            #   @param id [Integer]
          end
        end

        # @see Amocrm::Models::V4RolesUpdateByIDResponse::Role#rights
        class Rights < Amocrm::Internal::Type::BaseModel
          # @!attribute catalog_access
          #
          #   @return [Boolean, nil]
          optional :catalog_access, Amocrm::Internal::Type::Boolean

          # @!attribute companies
          #
          #   @return [Object, nil]
          optional :companies, Amocrm::Internal::Type::Unknown

          # @!attribute contacts
          #
          #   @return [Object, nil]
          optional :contacts, Amocrm::Internal::Type::Unknown

          # @!attribute group_id
          #
          #   @return [Integer, nil]
          optional :group_id, Integer, nil?: true

          # @!attribute is_active
          #
          #   @return [Boolean, nil]
          optional :is_active, Amocrm::Internal::Type::Boolean

          # @!attribute is_admin
          #
          #   @return [Boolean, nil]
          optional :is_admin, Amocrm::Internal::Type::Boolean

          # @!attribute is_free
          #
          #   @return [Boolean, nil]
          optional :is_free, Amocrm::Internal::Type::Boolean

          # @!attribute leads
          #
          #   @return [Object, nil]
          optional :leads, Amocrm::Internal::Type::Unknown

          # @!attribute mail_access
          #
          #   @return [Boolean, nil]
          optional :mail_access, Amocrm::Internal::Type::Boolean

          # @!attribute role_id
          #
          #   @return [Integer, nil]
          optional :role_id, Integer, nil?: true

          # @!attribute status_rights
          #
          #   @return [Array<Amocrm::Models::V4RolesUpdateByIDResponse::Role::Rights::StatusRight>, nil]
          optional :status_rights,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4RolesUpdateByIDResponse::Role::Rights::StatusRight] },
                   nil?: true

          # @!attribute tasks
          #
          #   @return [Object, nil]
          optional :tasks, Amocrm::Internal::Type::Unknown

          # @!method initialize(catalog_access: nil, companies: nil, contacts: nil, group_id: nil, is_active: nil, is_admin: nil, is_free: nil, leads: nil, mail_access: nil, role_id: nil, status_rights: nil, tasks: nil)
          #   @param catalog_access [Boolean]
          #   @param companies [Object]
          #   @param contacts [Object]
          #   @param group_id [Integer, nil]
          #   @param is_active [Boolean]
          #   @param is_admin [Boolean]
          #   @param is_free [Boolean]
          #   @param leads [Object]
          #   @param mail_access [Boolean]
          #   @param role_id [Integer, nil]
          #   @param status_rights [Array<Amocrm::Models::V4RolesUpdateByIDResponse::Role::Rights::StatusRight>, nil]
          #   @param tasks [Object]

          class StatusRight < Amocrm::Internal::Type::BaseModel
            # @!attribute entity_type
            #
            #   @return [String, nil]
            optional :entity_type, String

            # @!attribute pipeline_id
            #
            #   @return [Integer, nil]
            optional :pipeline_id, Integer

            # @!attribute rights
            #
            #   @return [Object, nil]
            optional :rights, Amocrm::Internal::Type::Unknown

            # @!attribute status_id
            #
            #   @return [Integer, nil]
            optional :status_id, Integer

            # @!method initialize(entity_type: nil, pipeline_id: nil, rights: nil, status_id: nil)
            #   @param entity_type [String]
            #   @param pipeline_id [Integer]
            #   @param rights [Object]
            #   @param status_id [Integer]
          end
        end
      end

      class Problem < Amocrm::Internal::Type::BaseModel
        # @!attribute detail
        #
        #   @return [String, nil]
        optional :detail, String

        # @!attribute status
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(detail: nil, status: nil, title: nil, type: nil)
        #   @param detail [String]
        #   @param status [Integer]
        #   @param title [String]
        #   @param type [String]
      end

      # @!method self.variants
      #   @return [Array(Amocrm::Models::V4RolesUpdateByIDResponse::Role, Amocrm::Models::V4RolesUpdateByIDResponse::Problem)]
    end
  end
end
