# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#sources_get_by_id
    module APISourcesGetByIDResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::APISourcesGetByIDResponse::Source }

      variant -> { Amocrm::Models::APISourcesGetByIDResponse::Problem }

      class Source < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute default
        #
        #   @return [Boolean, nil]
        optional :default, Amocrm::Internal::Type::Boolean

        # @!attribute external_id
        #
        #   @return [String, Integer, Boolean, nil]
        optional :external_id, union: -> { Amocrm::Models::APISourcesGetByIDResponse::Source::ExternalID }

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute origin_code
        #
        #   @return [String, nil]
        optional :origin_code, String, nil?: true

        # @!attribute pipeline_id
        #
        #   @return [Integer, nil]
        optional :pipeline_id, Integer, nil?: true

        # @!attribute services
        #
        #   @return [Array<Object>, Array<String>, nil]
        optional :services, union: -> { Amocrm::Models::APISourcesGetByIDResponse::Source::Services }

        # @!method initialize(id: nil, _links: nil, default: nil, external_id: nil, name: nil, origin_code: nil, pipeline_id: nil, services: nil)
        #   @param id [Integer]
        #   @param _links [Object]
        #   @param default [Boolean]
        #   @param external_id [String, Integer, Boolean]
        #   @param name [String]
        #   @param origin_code [String, nil]
        #   @param pipeline_id [Integer, nil]
        #   @param services [Array<Object>, Array<String>]

        # @see Amocrm::Models::APISourcesGetByIDResponse::Source#external_id
        module ExternalID
          extend Amocrm::Internal::Type::Union

          variant String

          variant Integer

          variant Amocrm::Internal::Type::Boolean

          # @!method self.variants
          #   @return [Array(String, Integer, Boolean)]
        end

        # @see Amocrm::Models::APISourcesGetByIDResponse::Source#services
        module Services
          extend Amocrm::Internal::Type::Union

          variant -> { Amocrm::Models::APISourcesGetByIDResponse::Source::Services::UnionMember0Array }

          variant -> { Amocrm::Models::APISourcesGetByIDResponse::Source::Services::StringArray }

          # @!method self.variants
          #   @return [Array(Array<Object>, Array<String>)]

          # @type [Amocrm::Internal::Type::Converter]
          UnionMember0Array = Amocrm::Internal::Type::ArrayOf[Amocrm::Internal::Type::Unknown]

          # @type [Amocrm::Internal::Type::Converter]
          StringArray = Amocrm::Internal::Type::ArrayOf[String]
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
      #   @return [Array(Amocrm::Models::APISourcesGetByIDResponse::Source, Amocrm::Models::APISourcesGetByIDResponse::Problem)]
    end
  end
end
