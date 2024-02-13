class InventionDatasController < ApplicationController
    skip_before_action :verify_authenticity_token, only: :search
  
    def search
      query = params[:query]
      search_string = URI.encode_www_form_component(query)
      redirect_to "https://developer.uspto.gov/ibd-api/v1/application/publications?searchText=#{search_string}", allow_other_host: true
    end
  end