class LanguageSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id,:name,:teacher_id,:documentation_url

  def documentation_url
    if object.documentation.attached?
      object.documentation.map do |d|
        rails_blob_path(d, only_path: true)
      end
    else
      'No documentation available'
    end
  end

end
