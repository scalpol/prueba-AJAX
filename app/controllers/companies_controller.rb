class CompaniesController < ApplicationController
 before_action :authenticate_user!, only: :show

  def index
    @companies = Company.all
    @company = Company.new
  end

  def show
    @complaint = Complaint.new
  end

  def modal_edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    @company.update(name: params[:company][:name])
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
