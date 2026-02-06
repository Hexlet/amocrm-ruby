# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::V4#sources_list
    module V4SourcesListResponse
      extend Amocrm::Internal::Type::Union

      variant -> { Amocrm::Models::V4SourcesListResponse::SourceListResponse }

      variant -> { Amocrm::Models::V4SourcesListResponse::Problem }

      class SourceListResponse < Amocrm::Internal::Type::BaseModel
        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::V4SourcesListResponse::SourceListResponse::Embedded, nil]
        optional :_embedded, -> { Amocrm::Models::V4SourcesListResponse::SourceListResponse::Embedded }

        # @!attribute _links
        #
        #   @return [Object, nil]
        optional :_links, Amocrm::Internal::Type::Unknown

        # @!attribute _total_items
        #
        #   @return [Integer, nil]
        optional :_total_items, Integer

        # @!method initialize(_embedded: nil, _links: nil, _total_items: nil)
        #   @param _embedded [Amocrm::Models::V4SourcesListResponse::SourceListResponse::Embedded]
        #   @param _links [Object]
        #   @param _total_items [Integer]

        # @see Amocrm::Models::V4SourcesListResponse::SourceListResponse#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute sources
          #
          #   @return [Array<Amocrm::Models::V4SourcesListResponse::SourceListResponse::Embedded::Source>, nil]
          optional :sources,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::Models::V4SourcesListResponse::SourceListResponse::Embedded::Source] }

          # @!method initialize(sources: nil)
          #   @param sources [Array<Amocrm::Models::V4SourcesListResponse::SourceListResponse::Embedded::Source>]

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
            optional :external_id,
                     union: -> { Amocrm::Models::V4SourcesListResponse::SourceListResponse::Embedded::Source::ExternalID }

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
            optional :services,
                     union: -> { Amocrm::Models::V4SourcesListResponse::SourceListResponse::Embedded::Source::Services }

            # @!method initialize(id: nil, _links: nil, default: nil, external_id: nil, name: nil, origin_code: nil, pipeline_id: nil, services: nil)
            #   @param id [Integer]
            #   @param _links [Object]
            #   @param default [Boolean]
            #   @param external_id [String, Integer, Boolean]
            #   @param name [String]
            #   @param origin_code [String, nil]
            #   @param pipeline_id [Integer, nil]
            #   @param services [Array<Object>, Array<String>]

            # @see Amocrm::Models::V4SourcesListResponse::SourceListResponse::Embedded::Source#external_id
            module ExternalID
              extend Amocrm::Internal::Type::Union

              variant String

              variant Integer

              variant Amocrm::Internal::Type::Boolean

              # @!method self.variants
              #   @return [Array(String, Integer, Boolean)]
            end

            # @see Amocrm::Models::V4SourcesListResponse::SourceListResponse::Embedded::Source#services
            module Services
              extend Amocrm::Internal::Type::Union

              variant -> { Amocrm::Models::V4SourcesListResponse::SourceListResponse::Embedded::Source::Services::UnionMember0Array }

              variant -> { Amocrm::Models::V4SourcesListResponse::SourceListResponse::Embedded::Source::Services::StringArray }

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
      #   @return [Array(Amocrm::Models::V4SourcesListResponse::SourceListResponse, Amocrm::Models::V4SourcesListResponse::Problem)]
    end
  end
end
