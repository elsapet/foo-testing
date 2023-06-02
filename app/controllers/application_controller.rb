class ApplicationController < ActionController::Base
  def docto_false_positive
    search_params = {
      agenda_id: params[:agenda_id].presence,
      organization_id: params[:organization_id],
      speciality_id: params[:speciality_id].presence,
    }
    secretaryship_configuration = SecretaryshipConfiguration.find_by(search_params)
  end

  # def docto_false_positive
  #   secretaryship_configuration = SecretaryshipConfiguration.find_by({
  #     agenda_id: params[:agenda_id].presence,
  #     organization_id: params[:organization_id],
  #     speciality_id: params[:speciality_id].presence,
  #   })
  # end{ $<_>: $<!>$<_> }

  # def bad
  #   destination_url = cookies.delete(:destination_url)
  #   return redirect_to(destination_url, allow_other_host: true)
  # end

  # def also_bad
  #   csv_file = params.permit(:file).fetch(:file, nil)
  #   File.open(csv_file) do |csv|
  #   end
  # end
end
