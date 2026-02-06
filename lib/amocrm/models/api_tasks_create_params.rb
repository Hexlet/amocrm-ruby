# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::API#tasks_create
    class APITasksCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::APITasksCreateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::APITasksCreateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::APITasksCreateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute text
        #
        #   @return [String]
        required :text, String

        # @!attribute complete_till
        #
        #   @return [Integer, nil]
        optional :complete_till, Integer

        # @!attribute created_by
        #
        #   @return [Integer, nil]
        optional :created_by, Integer

        # @!attribute entity_id
        #
        #   @return [Integer, nil]
        optional :entity_id, Integer

        # @!attribute entity_type
        #
        #   @return [String, nil]
        optional :entity_type, String

        # @!attribute request_id
        #   Client-side request id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!attribute responsible_user_id
        #
        #   @return [Integer, nil]
        optional :responsible_user_id, Integer

        # @!attribute task_type_id
        #
        #   @return [Integer, nil]
        optional :task_type_id, Integer

        # @!attribute updated_by
        #
        #   @return [Integer, nil]
        optional :updated_by, Integer

        # @!method initialize(text:, complete_till: nil, created_by: nil, entity_id: nil, entity_type: nil, request_id: nil, responsible_user_id: nil, task_type_id: nil, updated_by: nil)
        #   @param text [String]
        #
        #   @param complete_till [Integer]
        #
        #   @param created_by [Integer]
        #
        #   @param entity_id [Integer]
        #
        #   @param entity_type [String]
        #
        #   @param request_id [String] Client-side request id
        #
        #   @param responsible_user_id [Integer]
        #
        #   @param task_type_id [Integer]
        #
        #   @param updated_by [Integer]
      end
    end
  end
end
