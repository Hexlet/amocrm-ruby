# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#pipelines_create
    class APIPipelinesCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::APIPipelinesCreateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APIPipelinesCreateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::APIPipelinesCreateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute _embedded
        #
        #   @return [Amocrm::Models::APIPipelinesCreateParams::Body::Embedded, nil]
        optional :_embedded, -> { Amocrm::APIPipelinesCreateParams::Body::Embedded }

        # @!attribute is_main
        #
        #   @return [Boolean, nil]
        optional :is_main, Amocrm::Internal::Type::Boolean

        # @!attribute is_unsorted_on
        #
        #   @return [Boolean, nil]
        optional :is_unsorted_on, Amocrm::Internal::Type::Boolean

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!attribute sort
        #
        #   @return [Integer, nil]
        optional :sort, Integer

        # @!method initialize(name:, _embedded: nil, is_main: nil, is_unsorted_on: nil, request_id: nil, sort: nil)
        #   @param name [String]
        #   @param _embedded [Amocrm::Models::APIPipelinesCreateParams::Body::Embedded]
        #   @param is_main [Boolean]
        #   @param is_unsorted_on [Boolean]
        #   @param request_id [String]
        #   @param sort [Integer]

        # @see Amocrm::Models::APIPipelinesCreateParams::Body#_embedded
        class Embedded < Amocrm::Internal::Type::BaseModel
          # @!attribute statuses
          #
          #   @return [Array<Amocrm::Models::APIPipelinesCreateParams::Body::Embedded::Status>, nil]
          optional :statuses,
                   -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APIPipelinesCreateParams::Body::Embedded::Status] }

          # @!method initialize(statuses: nil)
          #   @param statuses [Array<Amocrm::Models::APIPipelinesCreateParams::Body::Embedded::Status>]

          class Status < Amocrm::Internal::Type::BaseModel
            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute color
            #
            #   @return [String, nil]
            optional :color, String

            # @!attribute descriptions
            #
            #   @return [Array<Amocrm::Models::APIPipelinesCreateParams::Body::Embedded::Status::Description>, nil]
            optional :descriptions,
                     -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APIPipelinesCreateParams::Body::Embedded::Status::Description] }

            # @!attribute request_id
            #
            #   @return [String, nil]
            optional :request_id, String

            # @!attribute sort
            #
            #   @return [Integer, nil]
            optional :sort, Integer

            # @!method initialize(name:, color: nil, descriptions: nil, request_id: nil, sort: nil)
            #   @param name [String]
            #   @param color [String]
            #   @param descriptions [Array<Amocrm::Models::APIPipelinesCreateParams::Body::Embedded::Status::Description>]
            #   @param request_id [String]
            #   @param sort [Integer]

            class Description < Amocrm::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Integer, nil]
              optional :id, Integer

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute level
              #
              #   @return [String, nil]
              optional :level, String

              # @!method initialize(id: nil, description: nil, level: nil)
              #   @param id [Integer]
              #   @param description [String]
              #   @param level [String]
            end
          end
        end
      end
    end
  end
end
