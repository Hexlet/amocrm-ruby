# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#sources_list
    class V4SourcesListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute filter
      #
      #   @return [Amocrm::Models::V4SourcesListParams::Filter, nil]
      optional :filter, -> { Amocrm::V4SourcesListParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   @param filter [Amocrm::Models::V4SourcesListParams::Filter]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Amocrm::Internal::Type::BaseModel
        # @!attribute external_id
        #
        #   @return [String, Integer, Boolean, Array<String, Integer, Boolean>, nil]
        optional :external_id, union: -> { Amocrm::V4SourcesListParams::Filter::ExternalID }

        # @!method initialize(external_id: nil)
        #   @param external_id [String, Integer, Boolean, Array<String, Integer, Boolean>]

        # @see Amocrm::Models::V4SourcesListParams::Filter#external_id
        module ExternalID
          extend Amocrm::Internal::Type::Union

          variant String

          variant Integer

          variant Amocrm::Internal::Type::Boolean

          variant -> { Amocrm::Models::V4SourcesListParams::Filter::ExternalID::UnionMember3Array }

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
              Amocrm::V4SourcesListParams::Filter::ExternalID::UnionMember3
            }]
        end
      end
    end
  end
end
