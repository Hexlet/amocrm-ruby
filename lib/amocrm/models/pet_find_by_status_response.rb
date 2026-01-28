# frozen_string_literal: true

module Amocrm
  module Models
    # @type [Amocrm::Internal::Type::Converter]
    PetFindByStatusResponse = Amocrm::Internal::Type::ArrayOf[-> { Amocrm::PetAPI }]
  end
end
