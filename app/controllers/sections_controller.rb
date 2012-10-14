require 'open-uri'

class SectionsController < ApplicationController
  def am_section    
    @response = open("http://codemountain.com/api/students/am.json").read
    @parsed_data = JSON.parse(@response)
  end
end