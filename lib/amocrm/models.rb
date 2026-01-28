# frozen_string_literal: true

module Amocrm
  [Amocrm::Internal::Type::BaseModel, *Amocrm::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Amocrm::Internal::AnyHash) } }
  end

  Amocrm::Internal::Util.walk_namespaces(Amocrm::Models).each do |mod|
    case mod
    in Amocrm::Internal::Type::Enum | Amocrm::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Amocrm::Internal::Util.walk_namespaces(Amocrm::Models)
                        .lazy
                        .grep(Amocrm::Internal::Type::Union)
                        .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  PetAPI = Amocrm::Models::PetAPI

  PetCreateParams = Amocrm::Models::PetCreateParams

  PetDeleteParams = Amocrm::Models::PetDeleteParams

  PetFindByStatusParams = Amocrm::Models::PetFindByStatusParams

  PetFindByTagsParams = Amocrm::Models::PetFindByTagsParams

  PetRetrieveParams = Amocrm::Models::PetRetrieveParams

  PetUpdateParams = Amocrm::Models::PetUpdateParams

  PetUpdateWithFormParams = Amocrm::Models::PetUpdateWithFormParams

  PetUploadImageParams = Amocrm::Models::PetUploadImageParams

  Store = Amocrm::Models::Store

  StoreListInventoryParams = Amocrm::Models::StoreListInventoryParams

  UserAPI = Amocrm::Models::UserAPI

  UserCreateParams = Amocrm::Models::UserCreateParams

  UserCreateWithListParams = Amocrm::Models::UserCreateWithListParams

  UserDeleteParams = Amocrm::Models::UserDeleteParams

  UserLoginParams = Amocrm::Models::UserLoginParams

  UserLogoutParams = Amocrm::Models::UserLogoutParams

  UserRetrieveParams = Amocrm::Models::UserRetrieveParams

  UserUpdateParams = Amocrm::Models::UserUpdateParams
end
