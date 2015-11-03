describe Airport do
  it 'so planes can land at a airport' do
    airport = Airport.new(20)
    plane = Plane.new
    expect{ airport.land(plane) }.not_to raise_error
  end

  it 'so planes can take off from airport' do
    airport = Airport.new(20)
    plane = Plane.new
    expect { airport.take_off(plane) }.not_to raise_error
  end

  it 'does not allow airplanes to land when airport is full' do
    airport = Airport.new(20)
    plane = Plane.new
    20.times do
      airport.land(20)
    end
    expect { airport.land(plane) }.to raise_error 'cannot land plane, at full capacity'
  end
end
