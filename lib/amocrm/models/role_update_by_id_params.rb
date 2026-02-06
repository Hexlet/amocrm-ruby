# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Roles#update_by_id
    class RoleUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute request_id
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!attribute rights
      #
      #   @return [Amocrm::Models::RoleUpdateByIDParams::Rights, nil]
      optional :rights, -> { Amocrm::RoleUpdateByIDParams::Rights }, nil?: true

      # @!method initialize(name: nil, request_id: nil, rights: nil, request_options: {})
      #   @param name [String]
      #   @param request_id [String]
      #   @param rights [Amocrm::Models::RoleUpdateByIDParams::Rights, nil]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

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
        #   @return [Array<Amocrm::Models::RoleUpdateByIDParams::Rights::StatusRight>, nil]
        optional :status_rights,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::RoleUpdateByIDParams::Rights::StatusRight] },
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
        #   @param status_rights [Array<Amocrm::Models::RoleUpdateByIDParams::Rights::StatusRight>, nil]
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
  end
end
