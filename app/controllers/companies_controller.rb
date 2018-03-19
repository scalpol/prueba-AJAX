class CompaniesController < ApplicationController
 before_action :authenticate_user!, only: :show
 before_action :set_company, except: [:index, :create]

  def index
    @companies = Company.all
    @company = Company.new
  end

  def show
    @complaint = Complaint.new
  end

  def modal_edit
  end

  def update
    @company.update(name: params[:company][:name])
  end

  def create
    @company = Company.new(name: params[:company][:name])
    @company.save
  end

  def destroy
    @company.destroy
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end
end
