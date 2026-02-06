# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Sources#list
    class SourceListParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute filter
      #
      #   @return [Amocrm::Models::SourceListParams::Filter, nil]
      optional :filter, -> { Amocrm::SourceListParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   @param filter [Amocrm::Models::SourceListParams::Filter]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Amocrm::Internal::Type::BaseModel
        # @!attribute external_id
        #
        #   @return [String, Integer, Boolean, Array<String, Integer, Boolean>, nil]
        optional :external_id, union: -> { Amocrm::SourceListParams::Filter::ExternalID }

        # @!method initialize(external_id: nil)
        #   @param external_id [String, Integer, Boolean, Array<String, Integer, Boolean>]

        # @see Amocrm::Models::SourceListParams::Filter#external_id
        module ExternalID
          extend Amocrm::Internal::Type::Union

          variant String

          variant Integer

          variant Amocrm::Internal::Type::Boolean

          variant -> { Amocrm::Models::SourceListParams::Filter::ExternalID::UnionMember3Array }

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
              Amocrm::SourceListParams::Filter::ExternalID::UnionMember3
            }]
        end
      end
    end
  end
end
