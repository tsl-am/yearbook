require 'open-uri'

class SectionsController < ApplicationController
  def am_section    
    @response = open("http://codemountain.com/api/students/am.json").read
  end
end