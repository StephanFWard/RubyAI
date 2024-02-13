class InventionDatasController < ApplicationController
  require 'open-uri'
  require 'nokogiri'

  def index
    @invention_datas = InventionData.all
  end

  def search
    query = params[:query]
    search_string = URI.encode(query)
    url = "https://developer.uspto.gov/ibd-api/v1/application/publications?searchText=#{search_string}"
    
    response_body = URI.open(url, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE).read

    ApiResponse.create(response_body: response_body)

    redirect_to search_results_path
  end
end
