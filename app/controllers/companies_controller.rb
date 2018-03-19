class CompaniesController < ApplicationController
 before_action :authenticate_user!, only: :show

  def index
    @companies = Company.all
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
    @complaint = Complaint.new
  end

  def create
    @company = Company.new(name: params[:company][:name])
    @company.save
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
  end
end
