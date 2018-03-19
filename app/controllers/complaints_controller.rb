class ComplaintsController < ApplicationController

  def create
    @complaint = Complaint.new(user_id: current_user.id, comment: params[:complaint][:comment], company_id: params[:company_id])
    @complaint.save

  end

end
