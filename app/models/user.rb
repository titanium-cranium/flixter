class User < ActiveRecord::Base
  has_many :courses
  has_many :enrollments
  has_many :enrolled_courses, :through => :enrollments, :source => :course

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable



  def enrolled_in?(course)
    # Adding has_many :through relationship changes the below N+1 dbase query into a single dbase query.
    # enrolled_courses = enrollments.collect(&:course)

    #refactored again
    # enrolled_courses = enrollments.collect do |enrollment|
    #   enrollment.course
    # end

    #refactored
    # enrolled_courses = []
    # enrollments.each do |enrollment|
    #   enrolled_courses << enrollment.course
    # end
    return enrolled_courses.include?(course)
  end
end
