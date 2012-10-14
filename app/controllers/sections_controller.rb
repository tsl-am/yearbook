require 'open-uri'

class SectionsController < ApplicationController
  def am_section    
    @response = open("http://codemountain.com/api/students/am.json").read
    @students = JSON.parse(@response)
  end
  
  def pm_section    
    @response = open("http://codemountain.com/api/students/pm.json").read
    @students = JSON.parse(@response)
  end
end