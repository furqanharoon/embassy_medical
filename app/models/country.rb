class Country < ActiveRecord::Base
	has_many :cities , :primary_key=>"id" ,:foreign_key => 'Country_id'
end
