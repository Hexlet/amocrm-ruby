# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#sources_update_by_id
    class APISourcesUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute default
      #
      #   @return [Boolean, nil]
      optional :default, Amocrm::Internal::Type::Boolean

      # @!attribute external_id
      #
      #   @return [String, nil]
      optional :external_id, String

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

      # @!attribute request_id
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!attribute services
      #
      #   @return [Array<Object>, Array<String>, nil]
      optional :services, union: -> { Amocrm::APISourcesUpdateByIDParams::Services }

      # @!method initialize(default: nil, external_id: nil, name: nil, origin_code: nil, pipeline_id: nil, request_id: nil, services: nil, request_options: {})
      #   @param default [Boolean]
      #   @param external_id [String]
      #   @param name [String]
      #   @param origin_code [String, nil]
      #   @param pipeline_id [Integer, nil]
      #   @param request_id [String]
      #   @param services [Array<Object>, Array<String>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      module Services
        extend Amocrm::Internal::Type::Union

        variant -> { Amocrm::Models::APISourcesUpdateByIDParams::Services::UnionMember0Array }

        variant -> { Amocrm::Models::APISourcesUpdateByIDParams::Services::StringArray }

        # @!method self.variants
        #   @return [Array(Array<Object>, Array<String>)]

        # @type [Amocrm::Internal::Type::Converter]
        UnionMember0Array = Amocrm::Internal::Type::ArrayOf[Amocrm::Internal::Type::Unknown]

        # @type [Amocrm::Internal::Type::Converter]
        StringArray = Amocrm::Internal::Type::ArrayOf[String]
      end
    end
  end
end
