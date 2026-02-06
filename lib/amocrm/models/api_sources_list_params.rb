# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#sources_list
    class APISourcesListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute filter
      #
      #   @return [Amocrm::Models::APISourcesListParams::Filter, nil]
      optional :filter, -> { Amocrm::APISourcesListParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   @param filter [Amocrm::Models::APISourcesListParams::Filter]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Amocrm::Internal::Type::BaseModel
        # @!attribute external_id
        #
        #   @return [String, Integer, Boolean, Array<String, Integer, Boolean>, nil]
        optional :external_id, union: -> { Amocrm::APISourcesListParams::Filter::ExternalID }

        # @!method initialize(external_id: nil)
        #   @param external_id [String, Integer, Boolean, Array<String, Integer, Boolean>]

        # @see Amocrm::Models::APISourcesListParams::Filter#external_id
        module ExternalID
          extend Amocrm::Internal::Type::Union

          variant String

          variant Integer

          variant Amocrm::Internal::Type::Boolean

          variant -> { Amocrm::Models::APISourcesListParams::Filter::ExternalID::UnionMember3Array }

          module UnionMember3
            extend Amocrm::Internal::Type::Union

            variant String

            variant Integer

            variant Amocrm::Internal::Type::Boolean

            # @!method self.variants
            #   @return [Array(String, Integer, Boolean)]
          end

          # @!method self.variants
          #   @return [Array(String, Integer, Boolean, Array<String, Integer, Boolean>)]

          # @type [Amocrm::Internal::Type::Converter]
          UnionMember3Array =
            Amocrm::Internal::Type::ArrayOf[union: -> {
              Amocrm::APISourcesListParams::Filter::ExternalID::UnionMember3
            }]
        end
      end
    end
  end
end
