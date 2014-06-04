module AccelaRestClient
  class Inspections < Base
    ## currently on v3 so I can help Hillsborough
    def get_inspections(params)
      send_request("/v4/inspections", AuthTypes::ACCESS_TOKEN, params)
    end
    def update_inspection(inspection_id, body)
      send_put("/v4/inspections/#{inspection_id}", AuthTypes::ACCESS_TOKEN, body)
    end
    def reschedule_inspection(inspection_id, body)
      send_put("/v4/inspections/#{inspection_id}/reschedule", AuthTypes::ACCESS_TOKEN, body)
    end
    def result_inspection(inspection_id, body)
      send_put("/v4/inspections/#{inspection_id}/result", AuthTypes::ACCESS_TOKEN, body)
    end
    def schedule_pending_inspection(inspection_id, body)
      send_put("/v4/inspections/#{inspection_id}/schedule", AuthTypes::ACCESS_TOKEN, body)
    end
    def get_inspection(inspection_ids, params)
      send_request("/v4/inspections/#{inspection_ids}", AuthTypes::ACCESS_TOKEN, params)
    end
    def delete_inspections(inspection_ids)
      send_delete("/v4/inspections/#{inspection_ids}", AuthTypes::ACCESS_TOKEN)
    end
    def assign_inspections(inspection_ids, body) #need to confirm if this is a query string or payload
      send_put("/v4/inspections/#{inspection_ids}/assign", AuthTypes::ACCESS_TOKEN, body)
    end
    def cancel_inspections(inspection_ids) 
      send_delete("/v4/inspections/#{inspection_ids}/cancel", AuthTypes::ACCESS_TOKEN)
    end
    def get_inspection_checklists(inspection_id, params)
      send_request("/v4/inspections/#{inspection_id}/checklists", AuthTypes::ACCESS_TOKEN, params)
    end
    def create_inspection_checklist(inspection_id, body)
      send_post("/v4/inspections/#{inspection_id}/checklists", AuthTypes::ACCESS_TOKEN, body)
    end
    def get_inspection_checklist_items(inspection_id, checklist_id, params)
      send_request("/v4/inspections/#{inspection_id}/checklists/#{checklist_id}/checklistItems", AuthTypes::ACCESS_TOKEN, params)
    end
    def update_inspection_checklist_items(inspection_id, checklist_id, body)
      send_put("/v4/inspections/#{inspection_id}/checklists/#{checklist_id}/checklistItems", AuthTypes::ACCESS_TOKEN, body)
    end
    def get_inspection_checklist_item_customforms(inspection_id, checklist_id, checklist_item_id, params)
      send_request("/v4/inspections/#{inspection_id}/checklists/#{checklist_id}/checklistItems/#{checklist_item_id}/customForms", AuthTypes::ACCESS_TOKEN, params)
    end    
    def update_inspection_checklist_item_customforms(inspection_id, checklist_id, checklist_item_id, body)
      send_put("/v4/inspections/#{inspection_id}/checklists/#{checklist_id}/checklistItems/#{checklist_item_id}/customForms", AuthTypes::ACCESS_TOKEN, body)
    end
    def get_inspection_checklist_item_customform_meta(inspection_id, checklist_id, checklist_item_id, form_id)
      send_request("/v4/inspections/#{inspection_id}/checklists/#{checklist_id}/checklistItems/#{checklist_item_id}/customForms/#{form_id}/meta", AuthTypes::ACCESS_TOKEN)
    end 
    def get_inspection_checklist_item_customforms_meta(inspection_id, checklist_id, checklist_item_id)
      send_request("/v4/inspections/#{inspection_id}/checklists/#{checklist_id}/checklistItems/#{checklist_item_id}/customForms/meta", AuthTypes::ACCESS_TOKEN)
    end 
    def update_inspection_checklist_item_customtables(inspection_id, checklist_id, checklist_item_id, body)
      send_put("/v4/inspections/#{inspection_id}/checklists/#{checklist_id}/checklistItems/#{checklist_item_id}/customTables", AuthTypes::ACCESS_TOKEN, body)
    end
    def get_inspection_checklist_item_customtables(inspection_id, checklist_id, checklist_item_id, params)
      send_request("/v4/inspections/#{inspection_id}/checklists/#{checklist_id}/checklistItems/#{checklist_item_id}/customTables", AuthTypes::ACCESS_TOKEN, params)
    end 
    def get_inspection_checklist_item_customtable(inspection_id, checklist_id, checklist_item_id, table_id, params)
      send_request("/v4/inspections/#{inspection_id}/checklists/#{checklist_id}/checklistItems/#{checklist_item_id}/customTables/#{table_id}", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_inspection_checklist_item_customtable_meta(inspection_id, checklist_id, checklist_item_id, table_id, params)
      send_request("/v4/inspections/#{inspection_id}/checklists/#{checklist_id}/checklistItems/#{checklist_item_id}/customTables/#{table_id}/meta", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_inspection_checklist_item_customtables_meta(inspection_id, checklist_id, checklist_item_id, params)
      send_request("/v4/inspections/#{inspection_id}/checklists/#{checklist_id}/checklistItems/#{checklist_item_id}/customTables/meta", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_inspection_checklist_item_documents(inspection_id, checklist_id, checklist_item_id, params)
      send_request("/v4/inspections/#{inspection_id}/checklists/#{checklist_id}/checklistItems/#{checklist_item_id}/documents", AuthTypes::ACCESS_TOKEN, params)
    end 
    def create_inspection_checklist_item_document(inspection_id, checklist_id, checklist_item_id, params) #need to figure out how to incorporate the query string
      send_post("/v4/inspections/#{inspection_id}/checklists/#{checklist_id}/checklistItems/#{checklist_item_id}/documents", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_inspection_checklist_item_histories(inspection_id, checklist_id, checklist_item_id)
      send_request("/v4/inspections/#{inspection_id}/checklists/#{checklist_id}/checklistItems/#{checklist_item_id}/histories", AuthTypes::ACCESS_TOKEN)
    end
    def get_inspection_checklist_histories(inspection_id, checklist_id)
      send_request("/v4/inspections/#{inspection_id}/checklists/#{checklist_id}/histories", AuthTypes::ACCESS_TOKEN)
    end
    def delete_inspection_checklists(inspection_id, checklist_ids)
      send_delete("/v4/inspections/#{inspection_id}/checklists/#{checklist_ids}", AuthTypes::ACCESS_TOKEN)
    end
    def get_inspection_comments(inspection_id, params)
      send_request("/v4/inspections/#{inspection_id}/comments", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_inspection_condition_approvals(inspection_id, params)
      send_request("/v4/inspections/#{inspection_id}/conditionApprovals", AuthTypes::ACCESS_TOKEN, params)
    end
    def create_inspection_condition_approvals(inspection_id, body)
      send_post("/v4/inspections/#{inspection_id}/conditionApprovals", AuthTypes::ACCESS_TOKEN, body)
    end
    def get_inspection_condition_approval(inspection_id, condition_id, params)
      send_request("/v4/inspections/#{inspection_id}/conditionApprovals/#{condition_id}", AuthTypes::ACCESS_TOKEN, params)
    end
    def update_inspection_condition_approval(inspection_id, condition_id, body)
      send_put("/v4/inspections/#{inspection_id}/conditionApprovals/#{condition_id}", AuthTypes::ACCESS_TOKEN, body)
    end
    def delete_inspection_condition_approvals(inspection_id, condition_id)
      send_delete("/v4/inspections/#{inspection_id}/conditionApprovals/#{condition_id}", AuthTypes::ACCESS_TOKEN)
    end
    def get_inspection_conditions(inspection_id, params)
      send_request("/v4/inspections/#{inspection_id}/conditions", AuthTypes::ACCESS_TOKEN, params)
    end
    def create_inspection_conditions(inspection_id, body)
      send_post("/v4/inspections/#{inspection_id}/conditions", AuthTypes::ACCESS_TOKEN, body)
    end
    def get_inspection_condition(inspection_id, condition_id, params)
      send_request("/v4/inspections/#{inspection_id}/conditions/#{condition_id}", AuthTypes::ACCESS_TOKEN, params)
    end
    def update_inspection_condition(inspection_id, condition_id, body)
      send_put("/v4/inspections/#{inspection_id}/conditions/#{condition_id}", AuthTypes::ACCESS_TOKEN, body)
    end
    def get_inspection_condition_histories(inspection_id, condition_id, params)
      send_request("/v4/inspections/#{inspection_id}/conditions/#{condition_id}/histories", AuthTypes::ACCESS_TOKEN, params)
    end
    def delete_inspection_conditions(inspection_id, condition_id)
      send_delete("/v4/inspections/#{inspection_id}/conditions/#{condition_id}", AuthTypes::ACCESS_TOKEN)
    end
    def get_inspection_documents(inspection_id, params)
      send_request("/v4/inspections/#{inspection_id}/documents", AuthTypes::ACCESS_TOKEN, params)
    end
    def create_inspection_documents(inspection_id, body) #need to figure out what to do with username and password
      send_post("/v4/inspections/#{inspection_id}/documents", AuthTypes::ACCESS_TOKEN, body)
    end
    def delete_inspection_documents(inspection_id, document_ids) #need to figure out what to do with username and password
      send_delete("/v4/inspections/#{inspection_id}/documents/#{document_ids}", AuthTypes::ACCESS_TOKEN)
    end
    def get_inspection_related(inspection_id, params)
      send_request("/v4/inspections/#{inspection_id}/related", AuthTypes::ACCESS_TOKEN, params)
    end
    def create_inspection_related(inspection_id, body)
      send_post("/v4/inspections/#{inspection_id}/related", AuthTypes::ACCESS_TOKEN, body)
    end
    def delete_inspection_related(inspection_id, child_ids)
      send_delete("/v4/inspections/#{inspection_id}/related/#{child_ids}", AuthTypes::ACCESS_TOKEN)
    end
    def get_inspection_timeaccounting(inspection_id)
      send_request("/v4/inspections/#{inspection_id}/timeAccounting", AuthTypes::ACCESS_TOKEN)
    end
    def create_inspection_timeaccounting(inspection_id, body)
      send_post("/v4/inspections/#{inspection_id}/timeAccounting", AuthTypes::ACCESS_TOKEN, body)
    end
    def update_inspection_timeaccounting(inspection_id, time_accounting_id, body)
      send_put("/v4/inspections/#{inspection_id}/timeAccounting/#{time_accounting_id}", AuthTypes::ACCESS_TOKEN, body)
    end  
    def delete_inspection_timeaccounting(inspection_id, time_accounting_ids)
      send_delete("/v4/inspections/#{inspection_id}/timeAccounting/#{time_accounting_ids}", AuthTypes::ACCESS_TOKEN)
    end 
    def get_inspection_histories(inspection_id, params)
      send_request("/v4/inspections/#{inspection_id}/histories", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_inspection_available_dates(params)
      send_request("/v4/inspections/availableDates", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_inspection_checklist_item_statuses(checklist_id, checklist_item_id)
      send_request("/v4/inspections/checklists/#{checklist_id}/checklistItems/#{checklist_item_id}/statuses", AuthTypes::ACCESS_TOKEN)
    end
    def schedule_inspection(body)
      send_post("/v4/inspections/schedule", AuthTypes::ACCESS_TOKEN, body)
    end
    def get_inspectors(params)
      send_request("/v4/inspectors", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_inspector(inspector_id)
      send_request("/v4/inspectors/#{inspector_id}", AuthTypes::ACCESS_TOKEN)
    end
    def get_settings_inspection_checklists(params)
      send_request("/v4/settings/inspections/checklists", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_settings_checklist_item_customform(checklist_id, checklist_item_id)
      send_request("/v4/settings/inspections/checklists/#{checklist_id}/checklistItems/#{checklist_item_id}/customForms", AuthTypes::ACCESS_TOKEN)
    end
    def get_settings_checklist_item_customtable(checklist_id, checklist_item_id)
      send_request("/v4/settings/inspections/checklists/#{checklist_id}/checklistItems/#{checklist_item_id}/customTables", AuthTypes::ACCESS_TOKEN)
    end
    def get_settings_inspection_checklist(checklist_ids, params)
      send_request("/v4/settings/inspections/checklists/#{checklist_ids}", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_settings_checklist_groups
      send_request("/v4/settings/inspections/checklistsGroups", AuthTypes::ACCESS_TOKEN)
    end
    def get_settings_inspection_grades(params)
      send_request("/v4/settings/inspections/grades", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_settings_inspection_statuses(params)
      send_request("/v4/settings/inspections/statuses", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_settings_all_inspection_types(params)
      send_request("/v4/settings/inspections/types", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_settings_inspection_types(inspection_ids, params)
      send_request("/v4/settings/inspections/types/#{inspection_ids}", AuthTypes::ACCESS_TOKEN, params)
    end
  end
end