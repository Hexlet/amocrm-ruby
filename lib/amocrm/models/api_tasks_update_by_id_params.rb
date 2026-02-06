# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#tasks_update_by_id
    class APITasksUpdateByIDParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

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
      #   @return [Amocrm::Models::APITasksUpdateByIDParams::Result, nil]
      optional :result, -> { Amocrm::APITasksUpdateByIDParams::Result }

      # @!attribute task_type_id
      #
      #   @return [Integer, nil]
      optional :task_type_id, Integer

      # @!attribute text
      #
      #   @return [String, nil]
      optional :text, String

      # @!method initialize(complete_till: nil, entity_id: nil, entity_type: nil, is_completed: nil, responsible_user_id: nil, result: nil, task_type_id: nil, text: nil, request_options: {})
      #   @param complete_till [Integer]
      #   @param entity_id [Integer]
      #   @param entity_type [String]
      #   @param is_completed [Boolean]
      #   @param responsible_user_id [Integer]
      #   @param result [Amocrm::Models::APITasksUpdateByIDParams::Result]
      #   @param task_type_id [Integer]
      #   @param text [String]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

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
