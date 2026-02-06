# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#tasks_update
    class APITasksUpdateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::APITasksUpdateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APITasksUpdateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::APITasksUpdateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #   Task id
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute complete_till
        #
        #   @return [Integer, nil]
        optional :complete_till, Integer

        # @!attribute entity_id
        #
        #   @return [Integer, nil]
        optional :entity_id, Integer

        # @!attribute entity_type
        #
        #   @return [String, nil]
        optional :entity_type, String

        # @!attribute is_completed
        #
        #   @return [Boolean, nil]
        optional :is_completed, Amocrm::Internal::Type::Boolean

        # @!attribute responsible_user_id
        #
        #   @return [Integer, nil]
        optional :responsible_user_id, Integer

        # @!attribute result
        #
        #   @return [Amocrm::Models::APITasksUpdateParams::Body::Result, nil]
        optional :result, -> { Amocrm::APITasksUpdateParams::Body::Result }

        # @!attribute task_type_id
        #
        #   @return [Integer, nil]
        optional :task_type_id, Integer

        # @!attribute text
        #
        #   @return [String, nil]
        optional :text, String

        # @!method initialize(id:, complete_till: nil, entity_id: nil, entity_type: nil, is_completed: nil, responsible_user_id: nil, result: nil, task_type_id: nil, text: nil)
        #   @param id [Integer] Task id
        #
        #   @param complete_till [Integer]
        #
        #   @param entity_id [Integer]
        #
        #   @param entity_type [String]
        #
        #   @param is_completed [Boolean]
        #
        #   @param responsible_user_id [Integer]
        #
        #   @param result [Amocrm::Models::APITasksUpdateParams::Body::Result]
        #
        #   @param task_type_id [Integer]
        #
        #   @param text [String]

        # @see Amocrm::Models::APITasksUpdateParams::Body#result
        class Result < Amocrm::Internal::Type::BaseModel
          # @!attribute text
          #
          #   @return [String, nil]
          optional :text, String

          # @!method initialize(text: nil)
          #   @param text [String]
        end
      end
    end
  end
end
