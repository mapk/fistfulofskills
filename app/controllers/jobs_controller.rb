class JobsController < ApplicationController
	def index
		@jobs = Job.where(publish: true)
	end

	def show
		@job = Job.find(params[:id])
	end

	def new
	end

	def preview
		@job = Job.find(params[:id])
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
		job.avatar = params[:job][:avatar]
		job.agree = params[:job][:agree]
		job.publish = false
		job.save!
		redirect_to '/jobs/preview/' + job.id
	end

	def update
		job = Job.find(params[:id])
		job.publish = true
		job.save!
		redirect_to '/jobs'
	end

end