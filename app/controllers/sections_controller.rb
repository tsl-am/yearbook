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
  
  def rfd_section    
    @response = open("http://codemountain.com/api/students/rfd.json").read
    @students = JSON.parse(@response)
  end
  
  def all_sections
    @am_students = JSON.parse(open("http://codemountain.com/api/students/am.json").read)
    @pm_students = JSON.parse(open("http://codemountain.com/api/students/pm.json").read)
    @rfd_students = JSON.parse(open("http://codemountain.com/api/students/rfd.json").read)
    @students = @am_students + @pm_students + @rfd_students
  end
end