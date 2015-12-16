class Lesson < ActiveRecord::Base
  belongs_to :section

  validates :title, :presence => true

  def new
  end

end
