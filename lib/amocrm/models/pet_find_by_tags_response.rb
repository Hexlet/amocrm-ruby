# frozen_string_literal: true

module Amocrm
  module Models
    # @type [Amocrm::Internal::Type::Converter]
    PetFindByTagsResponse = Amocrm::Internal::Type::ArrayOf[-> { Amocrm::PetAPI }]
  end
end
