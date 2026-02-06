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

  AccountGetParams = Amocrm::Models::AccountGetParams

  CallCreateParams = Amocrm::Models::CallCreateParams

  CatalogCreateParams = Amocrm::Models::CatalogCreateParams

  CatalogElementCreateParams = Amocrm::Models::CatalogElementCreateParams

  CatalogElementGetByIDParams = Amocrm::Models::CatalogElementGetByIDParams

  CatalogElementListParams = Amocrm::Models::CatalogElementListParams

  CatalogElementUpdateByIDParams = Amocrm::Models::CatalogElementUpdateByIDParams

  CatalogElementUpdateParams = Amocrm::Models::CatalogElementUpdateParams

  CatalogGetByIDParams = Amocrm::Models::CatalogGetByIDParams

  CatalogListParams = Amocrm::Models::CatalogListParams

  CatalogUpdateByIDParams = Amocrm::Models::CatalogUpdateByIDParams

  CatalogUpdateParams = Amocrm::Models::CatalogUpdateParams

  CompanyCreateParams = Amocrm::Models::CompanyCreateParams

  CompanyGetByIDParams = Amocrm::Models::CompanyGetByIDParams

  CompanyListParams = Amocrm::Models::CompanyListParams

  CompanyUpdateByIDParams = Amocrm::Models::CompanyUpdateByIDParams

  CompanyUpdateParams = Amocrm::Models::CompanyUpdateParams

  ContactChatLinkParams = Amocrm::Models::ContactChatLinkParams

  ContactChatListParams = Amocrm::Models::ContactChatListParams

  ContactCreateParams = Amocrm::Models::ContactCreateParams

  ContactGetByIDParams = Amocrm::Models::ContactGetByIDParams

  ContactListParams = Amocrm::Models::ContactListParams

  ContactUpdateByIDParams = Amocrm::Models::ContactUpdateByIDParams

  ContactUpdateParams = Amocrm::Models::ContactUpdateParams

  CustomerBonusPointChangeParams = Amocrm::Models::CustomerBonusPointChangeParams

  CustomerCreateParams = Amocrm::Models::CustomerCreateParams

  CustomerGetByIDParams = Amocrm::Models::CustomerGetByIDParams

  CustomerListParams = Amocrm::Models::CustomerListParams

  CustomerSegmentCreateParams = Amocrm::Models::CustomerSegmentCreateParams

  CustomerSegmentDeleteByIDParams = Amocrm::Models::CustomerSegmentDeleteByIDParams

  CustomerSegmentGetByIDParams = Amocrm::Models::CustomerSegmentGetByIDParams

  CustomerSegmentListParams = Amocrm::Models::CustomerSegmentListParams

  CustomerSegmentUpdateByIDParams = Amocrm::Models::CustomerSegmentUpdateByIDParams

  CustomersModeSetModeParams = Amocrm::Models::CustomersModeSetModeParams

  CustomerStatusCreateParams = Amocrm::Models::CustomerStatusCreateParams

  CustomerStatusDeleteByIDParams = Amocrm::Models::CustomerStatusDeleteByIDParams

  CustomerStatusGetByIDParams = Amocrm::Models::CustomerStatusGetByIDParams

  CustomerStatusListParams = Amocrm::Models::CustomerStatusListParams

  CustomerStatusUpdateByIDParams = Amocrm::Models::CustomerStatusUpdateByIDParams

  CustomerTransactionCreateParams = Amocrm::Models::CustomerTransactionCreateParams

  CustomerTransactionDeleteByIDParams = Amocrm::Models::CustomerTransactionDeleteByIDParams

  CustomerTransactionListByCustomerParams = Amocrm::Models::CustomerTransactionListByCustomerParams

  CustomerTransactionListParams = Amocrm::Models::CustomerTransactionListParams

  CustomerUpdateByIDParams = Amocrm::Models::CustomerUpdateByIDParams

  CustomerUpdateParams = Amocrm::Models::CustomerUpdateParams

  CustomFieldCreateParams = Amocrm::Models::CustomFieldCreateParams

  CustomFieldDeleteByIDParams = Amocrm::Models::CustomFieldDeleteByIDParams

  CustomFieldGetByIDParams = Amocrm::Models::CustomFieldGetByIDParams

  CustomFieldGroupCreateParams = Amocrm::Models::CustomFieldGroupCreateParams

  CustomFieldGroupDeleteByIDParams = Amocrm::Models::CustomFieldGroupDeleteByIDParams

  CustomFieldGroupGetByIDParams = Amocrm::Models::CustomFieldGroupGetByIDParams

  CustomFieldGroupListParams = Amocrm::Models::CustomFieldGroupListParams

  CustomFieldGroupUpdateByIDParams = Amocrm::Models::CustomFieldGroupUpdateByIDParams

  CustomFieldListParams = Amocrm::Models::CustomFieldListParams

  CustomFieldUpdateByIDParams = Amocrm::Models::CustomFieldUpdateByIDParams

  CustomFieldUpdateParams = Amocrm::Models::CustomFieldUpdateParams

  EntityFollowerAddParams = Amocrm::Models::EntityFollowerAddParams

  EntityFollowerListParams = Amocrm::Models::EntityFollowerListParams

  EntityFollowerRemoveParams = Amocrm::Models::EntityFollowerRemoveParams

  EntityLinkLinkByEntityParams = Amocrm::Models::EntityLinkLinkByEntityParams

  EntityLinkLinkParams = Amocrm::Models::EntityLinkLinkParams

  EntityLinkListByEntityParams = Amocrm::Models::EntityLinkListByEntityParams

  EntityLinkListParams = Amocrm::Models::EntityLinkListParams

  EntityLinkUnlinkByEntityParams = Amocrm::Models::EntityLinkUnlinkByEntityParams

  EntityLinkUnlinkParams = Amocrm::Models::EntityLinkUnlinkParams

  EntityNoteCreateParams = Amocrm::Models::EntityNoteCreateParams

  EntityNoteGetByIDParams = Amocrm::Models::EntityNoteGetByIDParams

  EntityNoteListParams = Amocrm::Models::EntityNoteListParams

  EntityNotePinParams = Amocrm::Models::EntityNotePinParams

  EntityNotesByParentCreateByParentParams = Amocrm::Models::EntityNotesByParentCreateByParentParams

  EntityNotesByParentGetByParentIDParams = Amocrm::Models::EntityNotesByParentGetByParentIDParams

  EntityNotesByParentListByParentParams = Amocrm::Models::EntityNotesByParentListByParentParams

  EntityNotesByParentUpdateByParentIDParams = Amocrm::Models::EntityNotesByParentUpdateByParentIDParams

  EntityNotesByParentUpdateByParentParams = Amocrm::Models::EntityNotesByParentUpdateByParentParams

  EntityNoteUnpinParams = Amocrm::Models::EntityNoteUnpinParams

  EntityNoteUpdateByIDParams = Amocrm::Models::EntityNoteUpdateByIDParams

  EntityNoteUpdateParams = Amocrm::Models::EntityNoteUpdateParams

  EventGetByIDParams = Amocrm::Models::EventGetByIDParams

  EventListParams = Amocrm::Models::EventListParams

  EventListTypesParams = Amocrm::Models::EventListTypesParams

  LeadCreateComplexParams = Amocrm::Models::LeadCreateComplexParams

  LeadCreateParams = Amocrm::Models::LeadCreateParams

  LeadGetByIDParams = Amocrm::Models::LeadGetByIDParams

  LeadListParams = Amocrm::Models::LeadListParams

  LeadUpdateByIDParams = Amocrm::Models::LeadUpdateByIDParams

  LeadUpdateParams = Amocrm::Models::LeadUpdateParams

  PipelineCreateParams = Amocrm::Models::PipelineCreateParams

  PipelineDeleteByIDParams = Amocrm::Models::PipelineDeleteByIDParams

  PipelineGetByIDParams = Amocrm::Models::PipelineGetByIDParams

  PipelineListParams = Amocrm::Models::PipelineListParams

  PipelineStatusCreateParams = Amocrm::Models::PipelineStatusCreateParams

  PipelineStatusDeleteByIDParams = Amocrm::Models::PipelineStatusDeleteByIDParams

  PipelineStatusGetByIDParams = Amocrm::Models::PipelineStatusGetByIDParams

  PipelineStatusListParams = Amocrm::Models::PipelineStatusListParams

  PipelineStatusUpdateByIDParams = Amocrm::Models::PipelineStatusUpdateByIDParams

  PipelineStatusUpdateParams = Amocrm::Models::PipelineStatusUpdateParams

  PipelineUpdateByIDParams = Amocrm::Models::PipelineUpdateByIDParams

  PipelineUpdateParams = Amocrm::Models::PipelineUpdateParams

  RoleCreateParams = Amocrm::Models::RoleCreateParams

  RoleDeleteByIDParams = Amocrm::Models::RoleDeleteByIDParams

  RoleGetByIDParams = Amocrm::Models::RoleGetByIDParams

  RoleListParams = Amocrm::Models::RoleListParams

  RoleUpdateByIDParams = Amocrm::Models::RoleUpdateByIDParams

  SalesbotRunParams = Amocrm::Models::SalesbotRunParams

  ShortLinkCreateParams = Amocrm::Models::ShortLinkCreateParams

  SourceCreateParams = Amocrm::Models::SourceCreateParams

  SourceDeleteByIDParams = Amocrm::Models::SourceDeleteByIDParams

  SourceDeleteParams = Amocrm::Models::SourceDeleteParams

  SourceGetByIDParams = Amocrm::Models::SourceGetByIDParams

  SourceListParams = Amocrm::Models::SourceListParams

  SourceUpdateByIDParams = Amocrm::Models::SourceUpdateByIDParams

  SourceUpdateParams = Amocrm::Models::SourceUpdateParams

  TagCreateParams = Amocrm::Models::TagCreateParams

  TagListParams = Amocrm::Models::TagListParams

  TalkCloseParams = Amocrm::Models::TalkCloseParams

  TalkGetByIDParams = Amocrm::Models::TalkGetByIDParams

  TaskCreateParams = Amocrm::Models::TaskCreateParams

  TaskGetByIDParams = Amocrm::Models::TaskGetByIDParams

  TaskListParams = Amocrm::Models::TaskListParams

  TaskUpdateByIDParams = Amocrm::Models::TaskUpdateByIDParams

  TaskUpdateParams = Amocrm::Models::TaskUpdateParams

  UnsortedLeadAcceptParams = Amocrm::Models::UnsortedLeadAcceptParams

  UnsortedLeadCreateFormsParams = Amocrm::Models::UnsortedLeadCreateFormsParams

  UnsortedLeadDeclineParams = Amocrm::Models::UnsortedLeadDeclineParams

  UserCreateParams = Amocrm::Models::UserCreateParams

  UserGetByIDParams = Amocrm::Models::UserGetByIDParams

  UserListParams = Amocrm::Models::UserListParams

  WebhookListParams = Amocrm::Models::WebhookListParams

  WebhookSubscribeParams = Amocrm::Models::WebhookSubscribeParams

  WebhookUnsubscribeParams = Amocrm::Models::WebhookUnsubscribeParams

  WebsiteButtonConnectOnlineChatParams = Amocrm::Models::WebsiteButtonConnectOnlineChatParams

  WebsiteButtonCreateParams = Amocrm::Models::WebsiteButtonCreateParams

  WebsiteButtonGetBySourceIDParams = Amocrm::Models::WebsiteButtonGetBySourceIDParams

  WebsiteButtonListParams = Amocrm::Models::WebsiteButtonListParams

  WebsiteButtonUpdateParams = Amocrm::Models::WebsiteButtonUpdateParams

  WidgetBotContinueContinueParams = Amocrm::Models::WidgetBotContinueContinueParams

  WidgetGetByCodeParams = Amocrm::Models::WidgetGetByCodeParams

  WidgetInstallParams = Amocrm::Models::WidgetInstallParams

  WidgetListParams = Amocrm::Models::WidgetListParams

  WidgetUninstallParams = Amocrm::Models::WidgetUninstallParams
end
