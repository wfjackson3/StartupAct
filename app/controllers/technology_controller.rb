class TechnologyController < LegislationController
  def transfer
    @universities = University.all
    
    @universities.technologies.each do |technology|
      @startup = Startup.random
      @startup.license = technology
    end
  end
end
