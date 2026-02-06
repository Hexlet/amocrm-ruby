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

  APIAccountGetParams = Amocrm::Models::APIAccountGetParams

  APICallsCreateParams = Amocrm::Models::APICallsCreateParams

  APICatalogElementsCreateParams = Amocrm::Models::APICatalogElementsCreateParams

  APICatalogElementsGetByIDParams = Amocrm::Models::APICatalogElementsGetByIDParams

  APICatalogElementsListParams = Amocrm::Models::APICatalogElementsListParams

  APICatalogElementsUpdateByIDParams = Amocrm::Models::APICatalogElementsUpdateByIDParams

  APICatalogElementsUpdateParams = Amocrm::Models::APICatalogElementsUpdateParams

  APICatalogsCreateParams = Amocrm::Models::APICatalogsCreateParams

  APICatalogsGetByIDParams = Amocrm::Models::APICatalogsGetByIDParams

  APICatalogsListParams = Amocrm::Models::APICatalogsListParams

  APICatalogsUpdateByIDParams = Amocrm::Models::APICatalogsUpdateByIDParams

  APICatalogsUpdateParams = Amocrm::Models::APICatalogsUpdateParams

  APICompaniesCreateParams = Amocrm::Models::APICompaniesCreateParams

  APICompaniesGetByIDParams = Amocrm::Models::APICompaniesGetByIDParams

  APICompaniesListParams = Amocrm::Models::APICompaniesListParams

  APICompaniesUpdateByIDParams = Amocrm::Models::APICompaniesUpdateByIDParams

  APICompaniesUpdateParams = Amocrm::Models::APICompaniesUpdateParams

  APIContactChatsLinkParams = Amocrm::Models::APIContactChatsLinkParams

  APIContactChatsListParams = Amocrm::Models::APIContactChatsListParams

  APIContactsCreateParams = Amocrm::Models::APIContactsCreateParams

  APIContactsGetByIDParams = Amocrm::Models::APIContactsGetByIDParams

  APIContactsListParams = Amocrm::Models::APIContactsListParams

  APIContactsUpdateByIDParams = Amocrm::Models::APIContactsUpdateByIDParams

  APIContactsUpdateParams = Amocrm::Models::APIContactsUpdateParams

  APICustomerBonusPointsChangeParams = Amocrm::Models::APICustomerBonusPointsChangeParams

  APICustomersCreateParams = Amocrm::Models::APICustomersCreateParams

  APICustomerSegmentsCreateParams = Amocrm::Models::APICustomerSegmentsCreateParams

  APICustomerSegmentsDeleteByIDParams = Amocrm::Models::APICustomerSegmentsDeleteByIDParams

  APICustomerSegmentsGetByIDParams = Amocrm::Models::APICustomerSegmentsGetByIDParams

  APICustomerSegmentsListParams = Amocrm::Models::APICustomerSegmentsListParams

  APICustomerSegmentsUpdateByIDParams = Amocrm::Models::APICustomerSegmentsUpdateByIDParams

  APICustomersGetByIDParams = Amocrm::Models::APICustomersGetByIDParams

  APICustomersListParams = Amocrm::Models::APICustomersListParams

  APICustomersModeSetModeParams = Amocrm::Models::APICustomersModeSetModeParams

  APICustomerStatusesCreateParams = Amocrm::Models::APICustomerStatusesCreateParams

  APICustomerStatusesDeleteByIDParams = Amocrm::Models::APICustomerStatusesDeleteByIDParams

  APICustomerStatusesGetByIDParams = Amocrm::Models::APICustomerStatusesGetByIDParams

  APICustomerStatusesListParams = Amocrm::Models::APICustomerStatusesListParams

  APICustomerStatusesUpdateByIDParams = Amocrm::Models::APICustomerStatusesUpdateByIDParams

  APICustomersUpdateByIDParams = Amocrm::Models::APICustomersUpdateByIDParams

  APICustomersUpdateParams = Amocrm::Models::APICustomersUpdateParams

  APICustomerTransactionsCreateParams = Amocrm::Models::APICustomerTransactionsCreateParams

  APICustomerTransactionsDeleteByIDParams = Amocrm::Models::APICustomerTransactionsDeleteByIDParams

  APICustomerTransactionsListByCustomerParams = Amocrm::Models::APICustomerTransactionsListByCustomerParams

  APICustomerTransactionsListParams = Amocrm::Models::APICustomerTransactionsListParams

  APICustomFieldGroupsCreateParams = Amocrm::Models::APICustomFieldGroupsCreateParams

  APICustomFieldGroupsDeleteByIDParams = Amocrm::Models::APICustomFieldGroupsDeleteByIDParams

  APICustomFieldGroupsGetByIDParams = Amocrm::Models::APICustomFieldGroupsGetByIDParams

  APICustomFieldGroupsListParams = Amocrm::Models::APICustomFieldGroupsListParams

  APICustomFieldGroupsUpdateByIDParams = Amocrm::Models::APICustomFieldGroupsUpdateByIDParams

  APICustomFieldsCreateParams = Amocrm::Models::APICustomFieldsCreateParams

  APICustomFieldsDeleteByIDParams = Amocrm::Models::APICustomFieldsDeleteByIDParams

  APICustomFieldsGetByIDParams = Amocrm::Models::APICustomFieldsGetByIDParams

  APICustomFieldsListParams = Amocrm::Models::APICustomFieldsListParams

  APICustomFieldsUpdateByIDParams = Amocrm::Models::APICustomFieldsUpdateByIDParams

  APICustomFieldsUpdateParams = Amocrm::Models::APICustomFieldsUpdateParams

  APIEntityFollowersAddParams = Amocrm::Models::APIEntityFollowersAddParams

  APIEntityFollowersListParams = Amocrm::Models::APIEntityFollowersListParams

  APIEntityFollowersRemoveParams = Amocrm::Models::APIEntityFollowersRemoveParams

  APIEntityLinksLinkByEntityParams = Amocrm::Models::APIEntityLinksLinkByEntityParams

  APIEntityLinksLinkParams = Amocrm::Models::APIEntityLinksLinkParams

  APIEntityLinksListByEntityParams = Amocrm::Models::APIEntityLinksListByEntityParams

  APIEntityLinksListParams = Amocrm::Models::APIEntityLinksListParams

  APIEntityLinksUnlinkByEntityParams = Amocrm::Models::APIEntityLinksUnlinkByEntityParams

  APIEntityLinksUnlinkParams = Amocrm::Models::APIEntityLinksUnlinkParams

  APIEntityNotesByParentCreateByParentParams = Amocrm::Models::APIEntityNotesByParentCreateByParentParams

  APIEntityNotesByParentGetByParentIDParams = Amocrm::Models::APIEntityNotesByParentGetByParentIDParams

  APIEntityNotesByParentListByParentParams = Amocrm::Models::APIEntityNotesByParentListByParentParams

  APIEntityNotesByParentUpdateByParentIDParams =
    Amocrm::Models::APIEntityNotesByParentUpdateByParentIDParams

  APIEntityNotesByParentUpdateByParentParams = Amocrm::Models::APIEntityNotesByParentUpdateByParentParams

  APIEntityNotesCreateParams = Amocrm::Models::APIEntityNotesCreateParams

  APIEntityNotesGetByIDParams = Amocrm::Models::APIEntityNotesGetByIDParams

  APIEntityNotesListParams = Amocrm::Models::APIEntityNotesListParams

  APIEntityNotesPinParams = Amocrm::Models::APIEntityNotesPinParams

  APIEntityNotesUnpinParams = Amocrm::Models::APIEntityNotesUnpinParams

  APIEntityNotesUpdateByIDParams = Amocrm::Models::APIEntityNotesUpdateByIDParams

  APIEntityNotesUpdateParams = Amocrm::Models::APIEntityNotesUpdateParams

  APIEventsGetByIDParams = Amocrm::Models::APIEventsGetByIDParams

  APIEventsListParams = Amocrm::Models::APIEventsListParams

  APIEventsListTypesParams = Amocrm::Models::APIEventsListTypesParams

  APILeadsCreateComplexParams = Amocrm::Models::APILeadsCreateComplexParams

  APILeadsCreateParams = Amocrm::Models::APILeadsCreateParams

  APILeadsGetByIDParams = Amocrm::Models::APILeadsGetByIDParams

  APILeadsListParams = Amocrm::Models::APILeadsListParams

  APILeadsUpdateByIDParams = Amocrm::Models::APILeadsUpdateByIDParams

  APILeadsUpdateParams = Amocrm::Models::APILeadsUpdateParams

  APIPipelinesCreateParams = Amocrm::Models::APIPipelinesCreateParams

  APIPipelinesDeleteByIDParams = Amocrm::Models::APIPipelinesDeleteByIDParams

  APIPipelinesGetByIDParams = Amocrm::Models::APIPipelinesGetByIDParams

  APIPipelinesListParams = Amocrm::Models::APIPipelinesListParams

  APIPipelineStatusesCreateParams = Amocrm::Models::APIPipelineStatusesCreateParams

  APIPipelineStatusesDeleteByIDParams = Amocrm::Models::APIPipelineStatusesDeleteByIDParams

  APIPipelineStatusesGetByIDParams = Amocrm::Models::APIPipelineStatusesGetByIDParams

  APIPipelineStatusesListParams = Amocrm::Models::APIPipelineStatusesListParams

  APIPipelineStatusesUpdateByIDParams = Amocrm::Models::APIPipelineStatusesUpdateByIDParams

  APIPipelineStatusesUpdateParams = Amocrm::Models::APIPipelineStatusesUpdateParams

  APIPipelinesUpdateByIDParams = Amocrm::Models::APIPipelinesUpdateByIDParams

  APIPipelinesUpdateParams = Amocrm::Models::APIPipelinesUpdateParams

  APIRolesCreateParams = Amocrm::Models::APIRolesCreateParams

  APIRolesDeleteByIDParams = Amocrm::Models::APIRolesDeleteByIDParams

  APIRolesGetByIDParams = Amocrm::Models::APIRolesGetByIDParams

  APIRolesListParams = Amocrm::Models::APIRolesListParams

  APIRolesUpdateByIDParams = Amocrm::Models::APIRolesUpdateByIDParams

  APISalesbotRunParams = Amocrm::Models::APISalesbotRunParams

  APIShortLinksCreateParams = Amocrm::Models::APIShortLinksCreateParams

  APISourcesCreateParams = Amocrm::Models::APISourcesCreateParams

  APISourcesDeleteByIDParams = Amocrm::Models::APISourcesDeleteByIDParams

  APISourcesDeleteParams = Amocrm::Models::APISourcesDeleteParams

  APISourcesGetByIDParams = Amocrm::Models::APISourcesGetByIDParams

  APISourcesListParams = Amocrm::Models::APISourcesListParams

  APISourcesUpdateByIDParams = Amocrm::Models::APISourcesUpdateByIDParams

  APISourcesUpdateParams = Amocrm::Models::APISourcesUpdateParams

  APITagsCreateParams = Amocrm::Models::APITagsCreateParams

  APITagsListParams = Amocrm::Models::APITagsListParams

  APITalksCloseParams = Amocrm::Models::APITalksCloseParams

  APITalksGetByIDParams = Amocrm::Models::APITalksGetByIDParams

  APITasksCreateParams = Amocrm::Models::APITasksCreateParams

  APITasksGetByIDParams = Amocrm::Models::APITasksGetByIDParams

  APITasksListParams = Amocrm::Models::APITasksListParams

  APITasksUpdateByIDParams = Amocrm::Models::APITasksUpdateByIDParams

  APITasksUpdateParams = Amocrm::Models::APITasksUpdateParams

  APIUnsortedLeadsAcceptParams = Amocrm::Models::APIUnsortedLeadsAcceptParams

  APIUnsortedLeadsCreateFormsParams = Amocrm::Models::APIUnsortedLeadsCreateFormsParams

  APIUnsortedLeadsDeclineParams = Amocrm::Models::APIUnsortedLeadsDeclineParams

  APIUsersCreateParams = Amocrm::Models::APIUsersCreateParams

  APIUsersGetByIDParams = Amocrm::Models::APIUsersGetByIDParams

  APIUsersListParams = Amocrm::Models::APIUsersListParams

  APIWebhooksListParams = Amocrm::Models::APIWebhooksListParams

  APIWebhooksSubscribeParams = Amocrm::Models::APIWebhooksSubscribeParams

  APIWebhooksUnsubscribeParams = Amocrm::Models::APIWebhooksUnsubscribeParams

  APIWebsiteButtonsConnectOnlineChatParams = Amocrm::Models::APIWebsiteButtonsConnectOnlineChatParams

  APIWebsiteButtonsCreateParams = Amocrm::Models::APIWebsiteButtonsCreateParams

  APIWebsiteButtonsGetBySourceIDParams = Amocrm::Models::APIWebsiteButtonsGetBySourceIDParams

  APIWebsiteButtonsListParams = Amocrm::Models::APIWebsiteButtonsListParams

  APIWebsiteButtonsUpdateParams = Amocrm::Models::APIWebsiteButtonsUpdateParams

  APIWidgetBotContinueContinueParams = Amocrm::Models::APIWidgetBotContinueContinueParams

  APIWidgetsGetByCodeParams = Amocrm::Models::APIWidgetsGetByCodeParams

  APIWidgetsInstallParams = Amocrm::Models::APIWidgetsInstallParams

  APIWidgetsListParams = Amocrm::Models::APIWidgetsListParams

  APIWidgetsUninstallParams = Amocrm::Models::APIWidgetsUninstallParams
end
