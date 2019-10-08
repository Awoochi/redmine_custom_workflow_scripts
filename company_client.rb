#This script automatically update custom field value when it's not equal a current project id

cf = CustomField.find(32)

if subject.present?
  if cf.id != @issue.project_id
    @issue.custom_field_values = { cf.id => @issue.project_id }
  end
end
