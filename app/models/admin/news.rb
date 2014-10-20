class Admin::News < ::News
	validates_presence_of :newscatalog_id,
		:message => "Name category not empty"
	validates_presence_of :title,
		:message => "Title news not empty"
	validates_presence_of :url,
		:message => "Url news not empty"
	#validates_presence_of :images,
	#	:message => "Images news not empty"
	validates_presence_of :description,
		:message => "Description news not empty"
	validates_presence_of :content,
		:message => "Content news not empty"
	validates_presence_of :tag,
		:message => "Tag news not empty"

	belongs_to :newscatalog
end