
FactoryGirl.define do  factory :lesson do
    
  end
  factory :section do
    
  end
  

	factory :user do
		sequence :email do |n|
		 	"b.obrien#{n}@me.com"
		 end
		password '12345678'
		password_confirmation '12345678'
	end

	factory :course do
		association :user
		name "hula hooping"
		description 'get them hips swaying'
		cost 100.00
	end

end