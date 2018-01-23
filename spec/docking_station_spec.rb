require 'docking_station'

describe DockingStation do

  station = DockingStation.new
  bike = Bike.new

  it "has an instance variable @bikes" do
    expect(station.bikes).to be_a Array
  end

  it { is_expected.to respond_to(:release_bike) }

  describe "#release_bike" do
    it 'gets a bike and expects the bike to be working' do
      expect(station.release_bike).to be_working
    end
  end

  describe "#dock_bike" do
    it { is_expected.to respond_to(:dock_bike) }
    it 'docks a bike' do
      expect(station.dock_bike(bike)).to include(bike)
    end
  end
end
