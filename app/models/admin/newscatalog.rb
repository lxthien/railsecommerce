class Admin::Newscatalog < ::Newscatalog
	validates_presence_of :parentcat_id,
		:message => "Parent category not empty"
	validates_presence_of :name,
		:message => "Name category not empty"
	validates_presence_of :url,
		:message => "Url category not empty"

	has_many :news
end
