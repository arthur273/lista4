class StudentSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id,:name,:matricula,:email,:teacher_id,:dataNascimento,:pfp_url
  def pfp_url
    if object.pfp.attached?
      rails_blob_path(object.pfp, only_path: true)
    else
      'No profile picture'
    end
  end
end
