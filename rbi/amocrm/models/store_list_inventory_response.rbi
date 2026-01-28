# typed: strong

module Amocrm
  module Models
    StoreListInventoryResponse =
      T.let(
        Amocrm::Internal::Type::HashOf[Integer],
        Amocrm::Internal::Type::Converter
      )
  end
end
