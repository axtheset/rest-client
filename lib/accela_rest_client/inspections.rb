module AccelaRestClient
  class Inspections < Base
    ## currently on v3 so I can help Hillsborough
    def get_inspections(params)
      send_request("/v4/inspections", AuthTypes::ACCESS_TOKEN, params)
    end
    def update_inspection(id, body)
      send_put("/v4/inspections/#{id}", AuthTypes::ACCESS_TOKEN, body)
    end
    def reschedule_inspection(id, body)
      send_put("/v4/inspections/#{id}/reschedule", AuthTypes::ACCESS_TOKEN, body)
    end
    def result_inspection(id, body)
      send_put("/v4/inspections/#{id}/result", AuthTypes::ACCESS_TOKEN, body)
    end
    def schedule_pending_inspection(id, body)
      send_put("/v4/inspections/#{id}/schedule", AuthTypes::ACCESS_TOKEN, body)
    end
    def get_inspection(ids, params)
      send_request("/v4/inspections/#{ids}", AuthTypes::ACCESS_TOKEN, params)
    end
    def delete_inspections(ids)
      send_delete("/v4/inspections/#{ids}", AuthTypes::ACCESS_TOKEN)
    end
    def assign_inspections(ids, body) #need to confirm if this is a query string or payload
      send_put("/v4/inspections/#{ids}/assign", AuthTypes::ACCESS_TOKEN, body)
    end
    def cancel_inspections(ids) 
      send_delete("/v4/inspections/#{ids}/cancel", AuthTypes::ACCESS_TOKEN)
    end
    def get_inspection_checklists(id, params)
      send_request("/v4/inspections/#{id}/checklists", AuthTypes::ACCESS_TOKEN, params)
    end
    def create_inspection_checklist(id, body)
      send_post("/v4/inspections/#{id}/checklists", AuthTypes::ACCESS_TOKEN, body)
    end
    def get_inspection_checklist_items(id, checklist_id, params)
      send_request("/v4/inspections/#{id}/checklists/#{checklist_id}/checklistItems", AuthTypes::ACCESS_TOKEN, params)
    end
  end
end