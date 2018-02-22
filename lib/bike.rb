class Bike

  def is_working?
    return true if @status == "working"
    false
  end

  def bike_status(status)
    @status = status
  end

end
