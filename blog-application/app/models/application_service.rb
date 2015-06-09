class ApplicationService
  class << self
    # Calls the on_event method of the supplied block
    def status(klass, status, object, &blk)
      # Kumolus.log "#{klass}.#{status} #{caller}"
      if block_given?
        (object) ? (yield klass.send(status, object)) : (yield klass.send(status))
      end
      object
    end

    # Allows the method to receive either an id of
    # an object or an already fetched object.
    def fetch(klass, object)
      object.is_a?(String) ?
        klass.find(object) :
          object
    end
  end

  def fetch(klass, object)
    self.class.fetch klass, object
  end
end
