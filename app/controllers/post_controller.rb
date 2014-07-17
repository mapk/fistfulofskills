class PostController < ApplicationController

	def index
	end

	def preview
		@job = Job.new
		@job.job_title = params[:job][:job_title]
		@job.job_location = params[:job][:job_location]
		@job.job_description = params[:job][:job_description]
		@job.job_responsibilities = params[:job][:job_responsibilities]
		@job.job_requirements = params[:job][:job_requirements]
		@job.specialties = params[:job][:specialties]
		@job.job_level = params[:job][:job_level]
		@job.how_to_apply = params[:job][:how_to_apply]
		@job.company = params[:job][:company]
		@job.company_description = params[:job][:company_description]
		@job.company_website = params[:job][:company_website]
		@job.avatar = params[:job][:avatar]
	end

	def create
		job = Job.new
		job.job_title = params[:job][:job_title]
		job.job_location = params[:job][:job_location]
		job.job_description = params[:job][:job_description]
		job.job_responsibilities = params[:job][:job_responsibilities]
		job.job_requirements = params[:job][:job_requirements]
		job.specialties = params[:job][:specialties]
		job.job_level = params[:job][:job_level]
		job.how_to_apply = params[:job][:how_to_apply]
		job.company = params[:job][:company]
		job.company_description = params[:job][:company_description]
		job.company_website = params[:job][:company_website]
		job.avatar_cache = params[:job][:avatar_cache]
		job.save!
		redirect_to '/jobs'
	end

	def avatar
		content = @job.avatar.read
			if stale?(etag: content, last_modified: @job.updated_at.utc, public: true)
			send_data content, type: @job.avatar.file.content_type, disposition: "inline"
			expires_in 0, public: true
		end
	end

	
end
