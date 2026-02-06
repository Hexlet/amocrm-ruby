# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#widgets_install
    module APIWidgetsInstallResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APIWidgetsInstallResponse::Widget }

      variant -> { Amocrm::Models::APIWidgetsInstallResponse::Problem }

      class Widget < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute client_uuid
        #
        #   @return [String, nil]
        optional :client_uuid, String, nil?: true

        # @!attribute code
        #
        #   @return [String, nil]
        optional :code, String

        # @!attribute is_active_in_account
        #
        #   @return [Boolean, nil]
        optional :is_active_in_account, Amocrm::Internal::Type::Boolean

        # @!attribute is_crm_template
        #
        #   @return [Boolean, nil]
        optional :is_crm_template, Amocrm::Internal::Type::Boolean

        # @!attribute is_lead_source
        #
        #   @return [Boolean, nil]
        optional :is_lead_source, Amocrm::Internal::Type::Boolean

        # @!attribute is_work_with_dp
        #
        #   @return [Boolean, nil]
        optional :is_work_with_dp, Amocrm::Internal::Type::Boolean

        # @!attribute pipeline_id
        #
        #   @return [Integer, nil]
        optional :pipeline_id, Integer, nil?: true

        # @!attribute rating
        #
        #   @return [String, Float, nil]
        optional :rating, union: -> { Amocrm::Models::APIWidgetsInstallResponse::Widget::Rating }, nil?: true

        # @!attribute settings
        #
        #   @return [Object, nil]
        optional :settings, Amocrm::Internal::Type::Unknown, nil?: true

        # @!attribute settings_template
        #
        #   @return [Array<Amocrm::Models::APIWidgetsInstallResponse::Widget::SettingsTemplate>, nil]
        optional :settings_template,
                 -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::APIWidgetsInstallResponse::Widget::SettingsTemplate] }

        # @!attribute version
        #
        #   @return [String, Integer, nil]
        optional :version, union: -> { Amocrm::Models::APIWidgetsInstallResponse::Widget::Version }, nil?: true

        # @!method initialize(id: nil, _links: nil, client_uuid: nil, code: nil, is_active_in_account: nil, is_crm_template: nil, is_lead_source: nil, is_work_with_dp: nil, pipeline_id: nil, rating: nil, settings: nil, settings_template: nil, version: nil)
        #   @param id [Integer]
        #   @param _links [Object]
        #   @param client_uuid [String, nil]
        #   @param code [String]
        #   @param is_active_in_account [Boolean]
        #   @param is_crm_template [Boolean]
        #   @param is_lead_source [Boolean]
        #   @param is_work_with_dp [Boolean]
        #   @param pipeline_id [Integer, nil]
        #   @param rating [String, Float, nil]
        #   @param settings [Object, nil]
        #   @param settings_template [Array<Amocrm::Models::APIWidgetsInstallResponse::Widget::SettingsTemplate>]
        #   @param version [String, Integer, nil]

        # @see Amocrm::Models::APIWidgetsInstallResponse::Widget#rating
        module Rating
          extend Amocrm::Internal::Type::Union

          variant String

          variant Float

          # @!method self.variants
          #   @return [Array(String, Float)]
        end

        class SettingsTemplate < Amocrm::Internal::Type::BaseModel
          # @!attribute is_required
          #
          #   @return [Boolean, nil]
          optional :is_required, Amocrm::Internal::Type::Boolean

          # @!attribute key
          #
          #   @return [String, nil]
          optional :key, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(is_required: nil, key: nil, name: nil, type: nil)
          #   @param is_required [Boolean]
          #   @param key [String]
          #   @param name [String]
          #   @param type [String]
        end

        # @see Amocrm::Models::APIWidgetsInstallResponse::Widget#version
        module Version
          extend Amocrm::Internal::Type::Union

          variant String

          variant Integer

          # @!method self.variants
          #   @return [Array(String, Integer)]
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
      #   @return [Array(Amocrm::Models::APIWidgetsInstallResponse::Widget, Amocrm::Models::APIWidgetsInstallResponse::Problem)]
    end
  end
end
