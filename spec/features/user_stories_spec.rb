describe Airport do
  it 'so planes can land at a airport' do
    airport = Airport.new
    plane = Plane.new
    expect{ airport.land(plane) }.not_to raise_error
  end

  it 'so planes can take off from airport' do
    airport = Airport.new
    plane = Plane.new
    expect { airport.take_off(plane) }.not_to raise_error
  end
end
