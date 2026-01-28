# typed: strong

module Amocrm
  module Models
    PetFindByTagsResponse =
      T.let(
        Amocrm::Internal::Type::ArrayOf[Amocrm::PetAPI],
        Amocrm::Internal::Type::Converter
      )
  end
end
