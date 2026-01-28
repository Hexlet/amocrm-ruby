# frozen_string_literal: true

module Amocrm
  module Models
    # @see Amocrm::Resources::Pet#create
    class PetAPI < Amocrm::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute photo_urls
      #
      #   @return [Array<String>]
      required :photo_urls, Amocrm::Internal::Type::ArrayOf[String], api_name: :photoUrls

      # @!attribute id
      #
      #   @return [Integer, nil]
      optional :id, Integer

      # @!attribute category
      #
      #   @return [Amocrm::Models::PetAPI::Category, nil]
      optional :category, -> { Amocrm::PetAPI::Category }

      # @!attribute status
      #   pet status in the store
      #
      #   @return [Symbol, Amocrm::Models::PetAPI::Status, nil]
      optional :status, enum: -> { Amocrm::PetAPI::Status }

      # @!attribute tags
      #
      #   @return [Array<Amocrm::Models::PetAPI::Tag>, nil]
      optional :tags, -> { Amocrm::Internal::Type::ArrayOf[Amocrm::PetAPI::Tag] }

      # @!method initialize(name:, photo_urls:, id: nil, category: nil, status: nil, tags: nil)
      #   @param name [String]
      #
      #   @param photo_urls [Array<String>]
      #
      #   @param id [Integer]
      #
      #   @param category [Amocrm::Models::PetAPI::Category]
      #
      #   @param status [Symbol, Amocrm::Models::PetAPI::Status] pet status in the store
      #
      #   @param tags [Array<Amocrm::Models::PetAPI::Tag>]

      # @see Amocrm::Models::PetAPI#category
      class Category < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id: nil, name: nil)
        #   @param id [Integer]
        #   @param name [String]
      end

      # pet status in the store
      #
      # @see Amocrm::Models::PetAPI#status
      module Status
        extend Amocrm::Internal::Type::Enum

        AVAILABLE = :available
        PENDING = :pending
        SOLD = :sold

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Tag < Amocrm::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id: nil, name: nil)
        #   @param id [Integer]
        #   @param name [String]
      end
    end
  end
end
