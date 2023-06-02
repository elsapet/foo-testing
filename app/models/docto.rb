
class Bug
  def docto_false_positive
    scope = { agenda_id: nil, speciality_id: nil }.merge(params.slice(:agenda_id, :organization_id, :speciality_id))
    current_configuration = SecretaryshipConfiguration.find_by scope
  end
end