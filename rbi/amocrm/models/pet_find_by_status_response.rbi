# typed: strong

module Amocrm
  module Models
    PetFindByStatusResponse =
      T.let(
        Amocrm::Internal::Type::ArrayOf[Amocrm::PetAPI],
        Amocrm::Internal::Type::Converter
      )
  end
end
