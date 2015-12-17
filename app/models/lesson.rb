class Lesson < ActiveRecord::Base
  belongs_to :section
  mount_uploader :video, VideoUploader

  validates :title, :presence => true


  def new
  end

end
