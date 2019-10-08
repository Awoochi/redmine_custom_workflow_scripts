#This script automatically update custom field value when it's not equal a current project id

cf = CustomField.find(32)
cus_com = @issue.customer_company
cf_name = cf.enumerations.find_by(name: cus_com)

if subject.present?
  if @issue.project_id == 8 # If project is "Helpdesk" then change custom field value on customer company value
    @issue.custom_field_values = {cf.id => cf_name.id}
  end

  if cf.id != @issue.project_id
    @issue.custom_field_values = { cf.id => @issue.project_id }
  end
end
