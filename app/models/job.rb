class Job
	include Mongoid::Document
	include Mongoid::Paperclip


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

	has_mongoid_attached_file :photo
	validates_attachment_content_type :photo, :content_type=>['image/jpeg', 'image/png']

	field :agree, type: Boolean


	GENERIC_PROFILE_PHOTO = '/images/generic-profile-pic.png'

	def show_photo
		if photo_file_size
			photo
		else
			GENERIC_PROFILE_PHOTO
		end
	end

end
