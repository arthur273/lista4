class TeacherSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id,:name,:email,:dataNascimento,:students,:pfp_url

  has_many :students

  def pfp_url
    if object.pfp.attached?
      rails_blob_path(object.pfp, only_path: true)
    else
      'No profile picture'
    end
  end
end
