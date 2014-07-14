class Job
	include Mongoid::Document
	mount_uploader :avatar, AvatarUploader

	field :job_title, type: String
	field :job_location, type: String
	field :job_description, type: String
	field :job_responsibilities, type: String
	field :job_requirements, type: String
	field :specialties, type: String
	field :job_level, type: String

	field :how_to_apply, type: String

	field :company, type: String
	field :company_description, type: String
	field :company_website, type: String

	field :agree, type: Boolean

end
