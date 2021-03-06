Joybox::Physics::Transform = B2DTransform

class B2DTransform

  alias_method :metric_position, :point
  alias_method :metric_position=, :setPoint

  def position
    metric_position.to_pixel_coordinates
  end

  def position=(point)
    point = point.to_point unless point.is_a? (CGPoint)
    self.metric_position = point.from_pixel_coordinates
  end

end