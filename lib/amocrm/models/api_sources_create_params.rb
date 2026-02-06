# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#sources_create
    class APISourcesCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::APISourcesCreateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APISourcesCreateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::APISourcesCreateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute external_id
        #
        #   @return [String]
        required :external_id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute default
        #
        #   @return [Boolean, nil]
        optional :default, Amocrm::Internal::Type::Boolean

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
        optional :services, union: -> { Amocrm::APISourcesCreateParams::Body::Services }

        # @!method initialize(external_id:, name:, default: nil, origin_code: nil, pipeline_id: nil, request_id: nil, services: nil)
        #   @param external_id [String]
        #   @param name [String]
        #   @param default [Boolean]
        #   @param origin_code [String, nil]
        #   @param pipeline_id [Integer, nil]
        #   @param request_id [String]
        #   @param services [Array<Object>, Array<String>]

        # @see Amocrm::Models::APISourcesCreateParams::Body#services
        module Services
          extend Amocrm::Internal::Type::Union

          variant -> { Amocrm::Models::APISourcesCreateParams::Body::Services::UnionMember0Array }

          variant -> { Amocrm::Models::APISourcesCreateParams::Body::Services::StringArray }

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
end
