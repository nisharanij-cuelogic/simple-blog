# Amazing fix
class Status
  attr_reader :status, :resources, :error

  class << self
    def success(resources=nil)
      new(:success, resources)
    end

    def error(exception=nil)
      new(:error, exception)
    end    

    def validation_error(validation_errors)
      new :validation_error, nil, validation_errors
    end    
  end  
  
  def initialize(status, resources=nil, error=nil)
    @status = status
    @resources = resources
    @error = error
  end

  def on_success
    yield(resources) if status == :success
  end

  def on_error
    yield(resources) if status == :error
  end

  def on_validation_error
    yield(error) if status == :validation_error
  end

end