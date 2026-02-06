# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Tags#create
    class TagCreateParams < Amocrm::Internal::Type::BaseModel
      extend Amocrm::Internal::Type::RequestParameters::Converter
      include Amocrm::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Amocrm::Models::TagCreateParams::Body>]
      required :body, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::TagCreateParams::Body] }

      # @!method initialize(body:, request_options: {})
      #   @param body [Array<Amocrm::Models::TagCreateParams::Body>]
      #   @param request_options [Amocrm::RequestOptions, Hash{Symbol=>Object}]

      module EntityType
        extend Amocrm::Internal::Type::Enum

        LEADS = :leads
        CONTACTS = :contacts
        COMPANIES = :companies
        CUSTOMERS = :customers

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Body < Amocrm::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute color
        #
        #   @return [String, nil]
        optional :color, String

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!method initialize(name:, color: nil, request_id: nil)
        #   @param name [String]
        #   @param color [String]
        #   @param request_id [String]
      end
    end
  end
end
