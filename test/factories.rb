
FactoryGirl.define do  factory :course do
    
  end

	factory :user do	
		sequence :email do |n|
		 	"b.obrien#{n}@me.com"
		 end
		password '12345678'
		password_confirmation '12345678'
	end

end