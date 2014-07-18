class GridfsController < ApplicationController

	def avatar
		@job = Job.find params[:id]

		content = @job.avatar.read

		send_data content, type: @job.avatar.file.content_type, disposition: "inline"
		expires_in 0, public: true

	end

end
